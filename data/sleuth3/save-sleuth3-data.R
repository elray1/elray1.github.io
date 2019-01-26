library(Sleuth3)
library(here)
here()

write.csv(Sleuth3::case0101, "data/sleuth3/case0101_creativity.csv", row.names = FALSE)
write.csv(Sleuth3::ex0126, "data/sleuth3/ex0126_lcv_house.csv", row.names = FALSE)
write.csv(Sleuth3::case0202, "data/sleuth3/ex0202_twins_schizophrenia.csv", row.names = FALSE)
