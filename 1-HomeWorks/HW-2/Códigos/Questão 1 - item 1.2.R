# Definindo os parâmetros
n <- 50
p <- 0.7
k <- 0:n

# Calculando as distribuições
pmf <- dbinom(k, size = n, prob = p)
cdf <- pbinom(k, size = n, prob = p)

# Gráfico da Função Massa de Probabilidade (PMF)
plot(k, pmf, type = "h", lwd = 2, col = "blue",
     main = "PMF de X",
     xlab = "Número de Clientes (k)",
     ylab = "P(X = k)",
     las = 1)
points(k, pmf, pch = 16, col = "blue", cex = 0.7)
grid()


# Gráfico da Função Distribuição Acumulada (CDF)
plot(k, cdf, type = "s", lwd = 2, col = "red",
     main = "CDF de X",
     xlab = "Número de Clientes (k)",
     ylab = "F(k) = P(X <= k)",
     las = 1)
grid()
