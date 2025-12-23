# Apagando variáveis
rm(list=ls())

# Variáveis
nome <- "Lucas"
idade <- 21

# Tipos de dados
5 + 3   # Soma
10 - 4  # Subtração
6 * 2   # Multiplicação
15 / 3  # Divisão
2 ^ 3   # Exponenciação

# Estruturas de dados
# Vetor de notas
notas <- c(7.5, 8.0, 6.5, 9.0, 7.0)

# Vetor de nomes de alunos
alunos <- c("Ana", "Beto", "Carlos", "Daniela", "Eduarda")

# Criando um data frame com as notas e os nomes dos alunos
turma <- data.frame(
  Nome = alunos,
  Nota = notas
)

# Visualizando o data frame
turma

# Funções básicas de estatística

# Média
mean(notas)

# Mediana
median(notas)

# Desvio Padrão
sd(notas)

# Variância
var(notas)

# Sumário estatístico completo
summary(notas)

# Média das notas da turma acessando uma coluna específica
mean(turma$Nota)

#Gráficos básicos

# Histograma das notas
hist(turma$Nota, main = "Histograma das Notas", xlab = "Notas", ylab = "Frequência")

# Gráfico de dispersão (scatter plot)

# Vamos criar um vetor de horas de estudo
horas_estudo <- c(10, 12, 8, 15, 9)
plot(horas_estudo, turma$Nota, main = "Horas de Estudo vs. Nota", xlab = "Horas de Estudo", ylab = "Nota")

# Carrega o pacote para a sua sessão atual
library(tidyverse)

turma %>%
  filter(Nota > 7.5)
