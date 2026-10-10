# Social media brand communication and brand equity measures
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: Schivinski, B., & Dabrowski, D. (2015). The impact of brand communication on brand equity through Facebook. Journal of Research in Interactive Marketing, 9(1), 31–53. https://doi.org/10.1108/JRIM-02-2014-0007
# Scale page and materials: https://schivinski.github.io/papers/brand-communication-brand-equity-facebook.html
#
# Data: one row per respondent, item columns named as in the codebook
# (fc1-fc4, ug1-ug4, bas1-bas4, bl1-bl3, pq1-pq3),
# coded 1 = Strongly disagree; 2; 3; 4; 5; 6; 7 = Strongly agree.

library(lavaan)

dat <- read.csv("your_data.csv")

# Reverse-score items worded in the opposite direction (bl1, bl2), as in the article
rev <- c("bl1", "bl2")
dat[rev] <- 8 - dat[rev]

items <- list(
  fc = c("fc1", "fc2", "fc3", "fc4"),
  ug = c("ug1", "ug2", "ug3", "ug4"),
  baw = c("bas1", "bas2", "bas3", "bas4"),
  bl = c("bl1", "bl2", "bl3"),
  pq = c("pq1", "pq2", "pq3")
)

# 1. Scores: mean of the items (range 1-7)
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- rowMeans(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha
cronbach_alpha <- function(x) {
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. Five-factor CFA (maximum likelihood, as in the article (AMOS 21.0))
model_cfa <- "
  fc           =~ fc1 + fc2 + fc3 + fc4
  ug           =~ ug1 + ug2 + ug3 + ug4
  baw          =~ bas1 + bas2 + bas3 + bas4
  bl           =~ bl1 + bl2 + bl3
  pq           =~ pq1 + pq2 + pq3
"
fit_cfa <- cfa(model_cfa, data = dat, estimator = "ML")
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}))

# 4. Structural model (Figure 2): H1a-H5
model_sem <- paste(model_cfa, "
  baw ~ fc + ug
  bl  ~ fc + ug + baw
  pq  ~ fc + ug + baw
")
fit_sem <- sem(model_sem, data = dat, estimator = "ML")
summary(fit_sem, fit.measures = TRUE, standardized = TRUE)

# 5. Industry comparison (Table III): multi-group model with a column 'industry' (three groups).
#    The paths from firm-created communication to loyalty and quality are dropped, as in the article.
#    Each labelled path gets a z-test of the difference between industries (comparable to CRDIFF).
model_mg <- paste(model_cfa, "
  baw ~ c(a1, a2, a3) * fc + c(b1, b2, b3) * ug
  bl  ~ c(c1, c2, c3) * ug + c(d1, d2, d3) * baw
  pq  ~ c(e1, e2, e3) * ug + c(f1, f2, f3) * baw
  fc_baw_12 := a1 - a2
  fc_baw_13 := a1 - a3
  fc_baw_23 := a2 - a3
  ug_pq_12  := e1 - e2
  ug_pq_13  := e1 - e3
  ug_pq_23  := e2 - e3
")
fit_mg <- sem(model_mg, data = dat, group = "industry", estimator = "ML")
subset(parameterEstimates(fit_mg), op == ":=")
