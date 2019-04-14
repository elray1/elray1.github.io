library(fpp2)
library(dplyr)
library(here)
here()


elecdaily_df <- elecdaily %>%
  as.data.frame() %>%
  mutate(
    WorkDay = ifelse(WorkDay, "WorkDay", "Other")
  )
write.csv(elecdaily_df, "data/fpp2/elecdaily.csv", row.names = FALSE)

