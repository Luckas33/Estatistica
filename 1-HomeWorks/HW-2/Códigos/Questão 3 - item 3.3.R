# Questões 3.3

source("Questão 3 - item 3.2.R")

#(a) Média amostral.

mediaSimTemperaturaCPU_1 <- mean(simTemperaturaCPU_1)
mediaSimTemperaturaCPU_2 <- mean(simTemperaturaCPU_2)

#(b) Desvio-padrão amostral.

desvioPadraoSimTemperaturaCPU_1 <- sd(simTemperaturaCPU_1)
desvioPadraoSimTemperaturaCPU_2<- sd(simTemperaturaCPU_2)

#(c) Temperatura mínima e máxima observada.

temperaturaMinSimTemperaturaCPU_1 <- min(simTemperaturaCPU_1)
temperaturaMinSimTemperaturaCPU_2 <- min(simTemperaturaCPU_2)

temperaturaMaxSimTemperaturaCPU_1 <- max(simTemperaturaCPU_1)
temperaturaMaxSimTemperaturaCPU_2 <- max(simTemperaturaCPU_2)

#(d) Probabilidade empírica e teórica P (T > 68)

  #Empírica:

probEmpSimTemperaturaCPU_1 <- sum(simTemperaturaCPU_1 > 68) / length(simTemperaturaCPU_1)
probEmpSimTemperaturaCPU_2 <- sum(simTemperaturaCPU_2 > 68) / length(simTemperaturaCPU_2)

probTeoSimTemperaturaCPU_1 <- 1 - pnorm(68, mean = 62, sd = 3.5)
probTeoSimTemperaturaCPU_2 <- 1 - pnorm(68, mean = 62, sd = 3.5)


#(e) Probabilidade empírica e teórica P (60 < T < 65)

  #Empírica:

probEmpSimTemperaturaCPU_1 <- sum(60 < simTemperaturaCPU_1 & simTemperaturaCPU_1 < 65) / length(simTemperaturaCPU_1)
probEmpSimTemperaturaCPU_2 <- sum(60 < simTemperaturaCPU_2 & simTemperaturaCPU_2 < 65) / length(simTemperaturaCPU_2)

probTeoSimTemperaturaCPU_1 <- pnorm(65, mean = 62, sd = 3.5) -pnorm(60, mean = 62, sd = 3.5)
probTeoSimTemperaturaCPU_2 <- pnorm(65, mean = 62, sd = 3.5) -pnorm(60, mean = 62, sd = 3.5)



#(f) Probabilidade teórica P (T > 75. Algum dos conjuntos de dados simulados (1.000
#amostras) contém valores acima de 75◦C? Caso não, explique por que eventos raros
#requerem tamanhos de amostra grandes para serem observados.

  #Teorica:
  probTeoSimTemperaturaCPU <- 1 - pnorm(75, mean = 62, sd = 3.5)
  any(simTemperaturaCPU_1 > 75)
  sum(simTemperaturaCPU_1 > 75)

  any(simTemperaturaCPU_2 > 75)
  sum(simTemperaturaCPU_2 > 75)