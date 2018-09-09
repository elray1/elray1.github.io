library(tidyverse)

set.seed(1234)

patients <- rbind(
  expand.grid(
    patient_id = seq_len(5),
    hospital_class = "low incidence",
    antibiotics_used = "no",
    uti = "yes",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(715),
    hospital_class = "low incidence",
    antibiotics_used = "no",
    uti = "no",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(20),
    hospital_class = "low incidence",
    antibiotics_used = "yes",
    uti = "yes",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(1093),
    hospital_class = "low incidence",
    antibiotics_used = "yes",
    uti = "no",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(99),
    hospital_class = "high incidence",
    antibiotics_used = "no",
    uti = "yes",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(1421),
    hospital_class = "high incidence",
    antibiotics_used = "no",
    uti = "no",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(22),
    hospital_class = "high incidence",
    antibiotics_used = "yes",
    uti = "yes",
    stringsAsFactors = FALSE
  ),
  expand.grid(
    patient_id = seq_len(144),
    hospital_class = "high incidence",
    antibiotics_used = "yes",
    uti = "no",
    stringsAsFactors = FALSE
  )
)

patients <- patients %>%
  mutate(patient_id = sample(seq_len(nrow(patients)))) %>%
  arrange(patient_id)

write_csv(patients, "data/norton_simpsons_paradox/uti_infections.csv")
