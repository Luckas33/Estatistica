# Questão 3.4

source("Questão 3 - item 3.2.R")

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

# (b) A função densidade de probabilidade (PDF) normal teórica (média 62 ◦C, desvio
# padrão 3,5 ºC) sobreposta ao histograma

# Histograma com densidade
hist(simTemperaturaCPU_1,
     probability = TRUE,   # transforma em densidade
     col = "red",
     border = "white",
     main = "Histograma da Temperatura da CPU com PDF Normal Teórica",
     xlab = "Temperatura (°C)")

hist(simTemperaturaCPU_2,
     probability = TRUE,   # transforma em densidade
     col = "blue",
     border = "white",
     add = TRUE)

# Curva da PDF normal teórica
curve(dnorm(x, mean = 62, sd = 3.5),
      col = "black",
      lwd = 2,
      add = TRUE)