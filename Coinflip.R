########################
# Simulations of coins #
########################
outcomes <- sample(c(0, 1), 1000, replace = TRUE)

set.seed(101)
biased_outcomes <- sample(c(0, 1), 1000,
                          replace = TRUE, prob = c(0.4, 0.6))

prob_estimate <- sum(biased_outcomes) /
  length(biased_outcomes)

prob_estimate
## [1] 0.603