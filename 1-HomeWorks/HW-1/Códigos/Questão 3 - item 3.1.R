# Questão 3.1

dados <- read.csv("Estatistica\\1-HomeWorks\\HW-1\\code\\HW1_bike_sharing.csv")
n_dados <- nrow(dados)
n_dados


data_inicio <- min(dados$dteday)
data_inicio

data_fim <- max(dados$dteday)
data_fim
