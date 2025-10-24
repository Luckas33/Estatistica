# Questão 2.3

renda <- c(2.3,1.6,1.2,0.9,2.1,1.6,1.8,1.4,1.2,2.8,3.4,2.7,1.6,1.2,1.1,2.5,2,1.7,2.1,3.2)
experiencia <- c(2,8,21,1,15,3,28,5,13,20,32,23,1,0,29,18,19,7,12,23)

plot(experiencia, renda,
     main = "Diagrama de Dispersão ",
     xlab = "Anos de experiência(X)",
     ylab = "Renda desejada (Y)",
     pch = 19, 
     col = "red")

r_coeficiente <- cor(experiencia, renda)




