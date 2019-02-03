library(carData)
library(here)
here()

Baumann <- carData::Baumann %>%
  mutate(
    group = ifelse(group == "Strat", "TA", as.character(group)),
    group = ifelse(group == "Basal", "Control", as.character(group))
  )
write.csv(Baumann, "data/fox/Baumann_reading.csv", row.names = FALSE)
