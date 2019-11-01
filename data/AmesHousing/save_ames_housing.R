library(readr)
ames_housing <- AmesHousing::make_ames()

write_csv(ames_housing, "data/AmesHousing/AmesHousing.csv")
