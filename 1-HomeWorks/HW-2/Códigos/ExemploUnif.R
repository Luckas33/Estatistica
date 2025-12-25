# Definindo os limites da uniforme
a <- 0
b <- 1

# Sequência de valores (eixo x)
x <- seq(a - 0.5, b + 0.5, length.out = 300)

# PDF da uniforme
pdf_values <- dunif(x, min = a, max = b)

# Plot
plot(x, pdf_values,
     type = "l",
     lwd = 2,
     col = "darkgreen",
     main = "PDF da Distribuição Uniforme (0,1)",
     xlab = "x",
     ylab = "f(x)",
     ylim = c(0, 1.2 * max(pdf_values))
)

# Linha horizontal (f(x) constante)
abline(h = 1/(b - a), col = "darkgreen", lty = 2)
