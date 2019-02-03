library(carData)
library(here)
here()

write.csv(carData::Baumann, "data/fox/Baumann_reading.csv", row.names = FALSE)
