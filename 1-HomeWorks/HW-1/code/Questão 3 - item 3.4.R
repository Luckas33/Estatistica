if (!requireNamespace("readr", quietly = TRUE)) install.packages("readr")
if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
library(readr)
library(dplyr)

dados <- read_csv("1-HomeWorks/HW-1/code/HW1_bike_sharing.csv")

dados <- dados %>%
  mutate(temp_C = temp * 41,
         total_users = casual + registered)

plot(dados$dteday, dados$temp_C, type = "l", col = "red",
     xlab = "Data", ylab = "Temperatura (°C)",
     main = "Série Temporal da Temperatura")

plot(dados$dteday, dados$total_users, type = "l", col = "blue",
     xlab = "Data", ylab = "Total de Usuários",
     main = "Série Temporal do Número Total de Usuários")

plot(dados$dteday, dados$total_users, type = "l", col = "blue",
     xlab = "Data", ylab = "Total de Usuários",
     main = "Comparação: Temperatura vs Total de Usuários")
par(new = TRUE)
plot(dados$dteday, dados$temp_C, type = "l", col = "red",
     axes = FALSE, xlab = "", ylab = "")
axis(side = 4)
mtext("Temperatura (°C)", side = 4, line = 3)
legend("topleft", legend = c("Total de Usuários", "Temperatura (°C)"),
       col = c("blue", "red"), lty = 1)
