library(tidyverse)
library(NHANES)

NHANES_subset <- NHANES %>%
  filter(SurveyYr == "2011_12") %>%
  select(ID, Gender, Age, Race3, Education, MaritalStatus, HHIncome, Poverty, Weight, Length, Height, Diabetes, nPregnancies, nBabies, PregnantNow) %>%
  mutate(ID = seq_len(nrow(.))) %>%
  sample_n(nrow(.))

colnames(NHANES_subset)[4] <- "Race"

write_csv(NHANES_subset, "data/misc/nhanes/nhanes.csv")
