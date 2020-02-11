library(readr)
library(dplyr)
library(CASdatasets)

data("danishuni")

write_csv(danishuni, "data/CAS/danishuni.csv")
