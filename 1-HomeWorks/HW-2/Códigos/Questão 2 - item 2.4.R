# Definindo as variaveis
n <- 10^7
p <- 10^-7
lambda <- n * p
n_simulacoes <- 10000

# Gerando a simulação
dados_simulados <- rbinom(n_simulacoes, size = n, prob = p)

contagem <- table(dados_simulados)
freq_relativa <- as.numeric(contagem) / n_simulacoes
valores_k <- as.numeric(names(contagem))

# Criando o gráfico
barplot(freq_relativa,
        names.arg = valores_k,
        col = "blue",
        main = "Simulação Binomial vs. Teoria de Poisson",
        xlab = "Número de Vencedores (X)",
        ylab = "Frequência Relativa",
        ylim = c(0, 0.45))

# Adicionando os pontos da Distribuição de Poisson Teórica para comparar
pontos_poisson <- dpois(0:max(valores_k), lambda)
points(0:max(valores_k) + 0.7, pontos_poisson, col = "red", pch = 16, cex = 1.5)
lines(0:max(valores_k) + 0.7, pontos_poisson, col = "red", lwd = 2)

legend("topright", legend = c("Simulação (Binomial)", "Teoria (Poisson)"),
       fill = c("blue", NA), col = c(NA, "red"), pch = c(NA, 16), bty = "n")