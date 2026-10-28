# Polish Internet Gaming Disorder Scale–Short-Form (IGDS9-SF)
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: Schivinski, B., Brzozowska-Woś, M., Buchanan, E. M., Griffiths, M. D., & Pontes, H. M. (2018). Psychometric assessment of the Internet Gaming Disorder diagnostic criteria: An Item Response Theory study. Addictive Behaviors Reports, 8, 176–184. https://doi.org/10.1016/j.abrep.2018.06.004
# Scale page and materials: https://schivinski.com/papers/igds9sf-polish-item-response-theory.html
#
# Data: one row per respondent, item columns named as in the codebook
# (igd1-igd9),
# coded 1 = Nigdy; 2 = Rzadko; 3 = Czasami; 4 = Często; 5 = Bardzo często.

library(lavaan)

dat <- read.csv("your_data.csv")

# Keep eligible respondents (screen: 0 = Nie; 1 = Tak)
dat <- subset(dat, screen == 1)

items <- list(
  igd = c("igd1", "igd2", "igd3", "igd4", "igd5", "igd6", "igd7", "igd8", "igd9")
)

# 1. Scores: sum of the items (range 9-45)
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- rowSums(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha
cronbach_alpha <- function(x) {
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. One-factor CFA (robust maximum likelihood (MLR), as in the article)
model_cfa <- "
  igd          =~ igd1 + igd2 + igd3 + igd4 + igd5 + igd6 + igd7 + igd8 + igd9
"
fit_cfa <- cfa(model_cfa, data = dat, estimator = "MLR")
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}))

# 4. Criteria endorsed and research classification (Pontes & Griffiths, 2015)
endorsed <- dat[items$igd] == 5                  # answered "Bardzo czesto" (very often)
dat$igd_criteria <- rowSums(endorsed)            # number of criteria endorsed, 0-9
dat$igd_disordered <- dat$igd_criteria >= 5      # DSM-5 threshold: five or more criteria
table(dat$igd_disordered)

# 5. MIMIC model (Figure 2): weekday, weekend and per-session gaming time predicting IGD.
#    Needs columns hours_weekdays, hours_weekend and hours_session.
if (all(c("hours_weekdays", "hours_weekend", "hours_session") %in% names(dat))) {
  model_mimic <- paste(model_cfa, "
    igd ~ hours_weekdays + hours_weekend + hours_session
  ")
  fit_mimic <- sem(model_mimic, data = dat, estimator = "MLR")
  summary(fit_mimic, fit.measures = TRUE, standardized = TRUE, rsquare = TRUE)
}

# 6. Item response theory (Table 2, Figures 3 and 4): graded response model with mirt,
#    compared with a generalized partial credit model by AIC (lower is better)
library(mirt)
resp <- dat[items$igd]
grm  <- mirt(resp, 1, itemtype = "graded", verbose = FALSE)
gpcm <- mirt(resp, 1, itemtype = "gpcm", verbose = FALSE)
c(AIC_graded = extract.mirt(grm, "AIC"), AIC_gpcm = extract.mirt(gpcm, "AIC"))
coef(grm, IRTpars = TRUE, simplify = TRUE)$items   # a = discrimination, b1-b4 = thresholds
itemfit(grm)                                       # S-X2 item fit
q3 <- residuals(grm, type = "Q3")                  # local dependence: flag values above 0.20
plot(grm, type = "trace")                          # trace curves (Figure 3)
plot(grm, type = "info")                           # test information curve (Figure 4)
