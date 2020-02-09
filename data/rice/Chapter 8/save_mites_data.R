library(readr)

set.seed(42)

obs_counts <- c(
  rep(0, 70),
  rep(1, 38),
  rep(2, 17),
  rep(3, 10),
  rep(4, 9),
  rep(5, 3),
  rep(6, 2),
  rep(7, 1)
)

mite_counts <- data.frame(
  num_mites_per_leaf = sample(obs_counts)
)

write_csv(mite_counts, "data/rice/Chapter 8/mites.csv")
