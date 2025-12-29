# Questão 3.4

#source("Estatistica\\1-HomeWorks\\HW-2\\códigos\\Questão 3 - item 3.2.R")

#a) Histrograma das temperaturas simuladas

hist(simTemperaturaCPU_1,
     main = "Histograma das Temperaturas simuladas das CPUs",
     xlab = "Temperatura em graus",
     ylab = "Frequência",
     col = "red",
     border = "white"
     )


hist(simTemperaturaCPU_2,
     main = "Histograma da Temperatura simulada da CPU 2",
     xlab = "Temperatura em graus",
     ylab = "Frequência",
     col = "blue",
     border = "white",
     add = TRUE  
)


