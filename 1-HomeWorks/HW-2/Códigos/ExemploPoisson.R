lambda <- 4
k <- 0:15

plot(k, dpois(k, lambda),
     type = "h",
     lwd = 3,
     main = "Distribuição de Poisson (λ = 4)",
     xlab = "k",
     ylab = "P(X = k)")
