# Sequência de valores do eixo x
x <- seq(-4, 4, length.out = 400)

# PDF da normal padrão
pdf_values <- dnorm(x, mean = 0, sd = 1)

# Plot da PDF
plot(x, pdf_values,
     type = "l",           # gráfico em linha
     lwd = 2,              # espessura da linha
     col = "red",          # cor da curva
     main = "PDF da Distribuição Normal (0,1)",
     xlab = "x",
     ylab = "f(x)")
