# Gaming Disorder Test (GDT)
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: Pontes, H. M., Schivinski, B., Sindermann, C., Li, M., Becker, B., Zhou, M., & Montag, C. (2021). Measurement and conceptualization of gaming disorder according to the World Health Organization framework: The development of the Gaming Disorder Test. International Journal of Mental Health and Addiction, 19(2), 508–528. https://doi.org/10.1007/s11469-019-00088-z
# Scale page and materials: https://schivinski.github.io/papers/gaming-disorder-test.html
#
# Data: one row per respondent, item columns named as in the codebook
# (gdt1-gdt4),
# coded 1 = Never; 2 = Rarely; 3 = Sometimes; 4 = Often; 5 = Very often.

library(lavaan)

dat <- read.csv("your_data.csv")

items <- list(
  gaming_disorder = c("gdt1", "gdt2", "gdt3", "gdt4")
)

# 1. Scores: sum of the items (range 4-20)
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- rowSums(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha
cronbach_alpha <- function(x) {
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. One-factor CFA (maximum likelihood with full information for missing data (FIML), as in the article)
model_cfa <- "
  gaming_disorder=~ gdt1 + gdt2 + gdt3 + gdt4
"
fit_cfa <- cfa(model_cfa, data = dat, estimator = "ML", missing = "fiml")
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}))

# 4. Criteria endorsed and research classification (article's appendix)
endorsed <- dat[items$gaming_disorder] >= 4      # answered "often" or "very often"
dat$gdt_criteria <- rowSums(endorsed)            # number of criteria endorsed, 0-4
dat$gdt_disordered <- dat$gdt_criteria == 4      # all four criteria endorsed
table(dat$gdt_disordered)
prop.table(table(dat$gdt_disordered))

# 5. MIMIC model (Figure 1): weekly gaming time, gender and age predicting gaming disorder.
#    Needs columns weekly_hours, gender (0/1) and age.
model_mimic <- paste(model_cfa, "
  gaming_disorder ~ weekly_hours + gender + age
")
fit_mimic <- sem(model_mimic, data = dat, estimator = "ML", missing = "fiml",
                 se = "bootstrap", bootstrap = 5000)
summary(fit_mimic, fit.measures = TRUE, standardized = TRUE)

# 6. Concurrent validity (Table 3): correlation with the IGDS9-SF total score, if collected
# cor.test(dat$gaming_disorder_score, dat$igds9sf_total)
