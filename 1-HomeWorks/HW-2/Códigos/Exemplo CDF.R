# Exemplo CDF

Rx <- c(0,1,2)
Px <- c(0.25,0.5,0.25)

# Calcular a soma acumulada
Fx <- cumsum(Px)

grafico_cdf <- stepfun(Rx, c(0, Fx))

plot(grafico_cdf, 
     main = "Função de Distribuição Acumulada (CDF)",
     xlab = "x", 
     ylab = "F(x)",
     verticals = FALSE, 
     pch = 19)
