# Questão 3.2
rm(list = ls())
source("Estatistica\\1-HomeWorks\\HW-2\\códigos\\Questão 3 - item 3.1.R")

#Gerando 1000 valores da temperatura da CPU utilizando função feita no item anterior.
simTemperaturaCPU_1 <- GeradorT(500);


#Gerando 1000 valores da temperatura da CPU utilizando função do R com média μ = 62 ºC e desvio padrão σ = 3, 5 ºC. 
simTemperaturaCPU_2 <- 