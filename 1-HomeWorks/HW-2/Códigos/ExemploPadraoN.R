# Sequência de valores para o eixo x
x <- seq(-4, 4, length.out = 400)

# PDF da normal padrão
pdf_values <- dnorm(x, mean = 0, sd = 1)

# Plot
plot(x, pdf_values,
     type = "l",
     lwd = 2,
     col = "blue",
     main = "PDF da Normal Padrão N(0,1)",
     xlab = "x",
     ylab = "f(x)"
)

