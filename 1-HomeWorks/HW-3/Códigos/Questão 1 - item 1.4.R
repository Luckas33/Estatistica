# Dados da Tabela 1
dados <- c(0.99, 2.31, 10.85, 6.15, 10.81, 3.72, 5.75, 4.15, 9.27, 7.84,
           2.31, 10.85, 6.15, 1.81, 3.72, 5.75, 10.40, 10.04, 4.15, 9.27)

n <- length(dados)
soma_n <- sum(dados)

# Calculo do Estimador de Maxima Verossimilhanca (MLE)
lambda_hat <- n / soma_n

# Definicao da funcao log-verossimilhanca
log_verossimilhanca <- function(l) {
  return(n * log(l) - l * soma_n)
}

# Criacao do grafico
curve(log_verossimilhanca, from = 0.01, to = 0.5, 
      xlab = expression(lambda), ylab = expression(l(lambda)),
      main = "Funcao Log-Verossimilhanca", col = "blue", lwd = 2)

# Adicionando o ponto do MLE no grafico
points(lambda_hat, log_verossimilhanca(lambda_hat), col = "red", pch = 19)
abline(v = lambda_hat, col = "red", lty = 2)

# Legenda com o valor calculado
text(lambda_hat + 0.08, log_verossimilhanca(lambda_hat), 
     labels = paste("MLE =", round(lambda_hat, 4)), col = "red")