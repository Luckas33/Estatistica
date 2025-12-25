# Sequência de valores no eixo x
x <- seq(-4, 4, length.out = 400)

# CDF da normal padrão
cdf_values <- pnorm(x, mean = 0, sd = 1)

# Plotagem
plot(x, cdf_values, 
     type = "l",           # gráfico em linha
     lwd = 2,              # espessura da linha
     col = "blue",         # cor da curva
     main = "CDF da Distribuição Normal (0,1)",
     xlab = "x",
     ylab = "F(x)")
