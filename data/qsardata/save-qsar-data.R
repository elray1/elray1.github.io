data(MeltingPoint)
mp_c <- bind_cols(
  MP_Descriptors,
  data.frame(temp = MP_Outcome),
  data.frame(train_test = MP_Data))

write_csv(mp_c,
  "~/Documents/teaching/personal_site/elray1.github.io/data/qsardata/melting_point.csv")
