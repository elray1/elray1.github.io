library(readr)
library(dplyr)
library(MASS)

write_csv(Boston, "data/mass/Boston.csv")
write_csv(fgl, "data/mass/fgl.csv")

birthwt <- MASS::birthwt %>%
  mutate(
    low = factor(low),
    smoke = (smoke > 0),
    ht = (ht > 0),
    ui = (ui > 0),
    race = factor(race, labels = c("white", "black", "other")),
    ptd = factor(ptl > 0),
    ftv = factor(ftv)
  ) %>%
  select(-ptl, -bwt)
levels(birthwt$ftv)[-(1:2)] <- "2+"

write_csv(birthwt, "data/mass/birthwt.csv")
