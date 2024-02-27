ppef24 <- data.table::fread("https://www.transparenciapresupuestaria.gob.mx/work/models/PTP/DatosAbiertos/Bases_de_datos_presupuesto/CSV/PPEF_2024.csv")
frec <- data.frame(table(ppef24$DESC_RAMO))

library(ggplot2)

ggplot(frec, aes( x = Var1, y = Freq)) +
  geom_col() + theme_bw() +
  theme(axis.text.x = element_text(angle=90, size = 15))
