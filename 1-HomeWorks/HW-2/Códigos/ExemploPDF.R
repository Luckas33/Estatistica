# Sequência de valores do eixo x
x <- seq(-10, 20, length.out = 400)

# PDF da normal padrão
pdf_values <- dnorm(x, mean = 4, sd = 3)

# Plot da PDF
plot(x, pdf_values,
     type = "l",           # gráfico em linha
     lwd = 2,              # espessura da linha
     col = "red",          # cor da curva
     main = "PDF da Distribuição (4,3)",
     xlab = "x",
     ylab = "f(x)")
