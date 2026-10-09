# Consumer’s Engagement with Brand-Related Social-Media Content (CEBSC) scale
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: Schivinski, B., Christodoulides, G., & Dabrowski, D. (2016). Measuring consumers’ engagement with brand-related social-media content: Development and validation of a scale that identifies levels of social-media engagement with brands. Journal of Advertising Research, 56(1), 64–80. https://doi.org/10.2501/JAR-2016-004
# Scale page and materials: https://schivinski.github.io/papers/measuring-consumer-engagement-social-media-content.html
#
# Data: one row per respondent, item columns named as in the codebook
# (cons1-cons5, cont1-cont6, crea1-crea6),
# coded 0 = not at all, 1 = not very often ... 7 = very often.

library(lavaan)

dat <- read.csv("your_data.csv")

items <- list(
  consumption = c("cons1", "cons2", "cons3", "cons4", "cons5"),
  contribution = c("cont1", "cont2", "cont3", "cont4", "cont5", "cont6"),
  creation = c("crea1", "crea2", "crea3", "crea4", "crea5", "crea6")
)

# 1. Dimension scores: mean of the items in each dimension (range 0-7)
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- rowMeans(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha per dimension
cronbach_alpha <- function(x) {
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. Three-factor CFA (robust maximum likelihood, as in the article)
model_cfa <- "
  consumption  =~ cons1 + cons2 + cons3 + cons4 + cons5
  contribution =~ cont1 + cont2 + cont3 + cont4 + cont5 + cont6
  creation     =~ crea1 + crea2 + crea3 + crea4 + crea5 + crea6
"
fit_cfa <- cfa(model_cfa, data = dat, estimator = "MLR")
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}))

# 4. Hierarchical model: consumption -> contribution -> creation (Figure 2)
model_hier <- paste(model_cfa, "
  contribution ~ consumption
  creation     ~ contribution
")
fit_hier <- sem(model_hier, data = dat, estimator = "MLR")
summary(fit_hier, fit.measures = TRUE, standardized = TRUE)

# 5. Mediation: does contribution mediate consumption -> creation? (Table 2)
model_med <- paste(model_cfa, "
  contribution ~ a * consumption
  creation     ~ b * contribution + c * consumption
  indirect := a * b
  total    := c + a * b
")
fit_med <- sem(model_med, data = dat, se = "bootstrap", bootstrap = 5000)
parameterEstimates(fit_med, boot.ci.type = "bca.simple", level = 0.99, standardized = TRUE)
