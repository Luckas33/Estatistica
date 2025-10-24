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

season_usuarios <- data.frame(
  Season = dados$season,
  Usuarios = dados$casual + dados$registered
)

sumario_estacoes <- aggregate(
  Usuarios ~ Season,             
  data = season_usuarios,
  FUN = sum
)


barplot(
  sumario_estacoes$Usuarios,
  names.arg = sumario_estacoes$Season, 
  main = "Total de Usuários por Estação",
  xlab = "Estação",
  ylab = "Número Total de Usuários",
  border = "black",
  col = "lightblue"
)



weathersit_usuarios <- data.frame(
  Weathersit = dados$weathersit,
  Usuarios = dados$casual + dados$registered
)

sumario_weathersit <- aggregate(
  Usuarios ~ Weathersit,             
  data = weathersit_usuarios,
  FUN = sum
)


barplot(
  sumario_weathersit$Usuarios,
  names.arg = sumario_weathersit$Weathersit, 
  main = "Total de Usuários por Clima",
  xlab = "Estação",
  ylab = "Número Total de Usuários",
  border = "black",
  col = "lightblue"
)

