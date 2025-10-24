# Questão 3.3

dados <- read.csv("Estatistica\\1-HomeWorks\\HW-1\\code\\HW1_bike_sharing.csv")

dados$season <- factor(
  x = dados$season,
  levels = c(1, 2, 3, 4),              
  labels = c("Primavera", "Verão", "Outono", "Inverno")
)

dados$weathersit <- factor(
  x = dados$weathersit,
  levels = c(1,2,3,4),
  labels = c("Céu limpo", "Nublado", "Chuva fraca", "Chuva forte")
)
