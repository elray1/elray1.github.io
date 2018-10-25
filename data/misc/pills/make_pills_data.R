library(readr)

n <- 20
mean_1 <- 4.043
sd_1 <- 0.03
mean_2 <- 4.037
sd_2 <- 0.07

set.seed(1000)

pills <- data.frame(
  Lab = rep(c("Lab 1", "Lab 2"), each = n),
  measured_chlorpheniramine_maleate = c(rnorm(n = n, mean = mean_1, sd = sd_1), rnorm(n = n, mean = mean_2, sd = sd_2))
)

write_csv(pills, "data/misc/pills/pills.csv")
