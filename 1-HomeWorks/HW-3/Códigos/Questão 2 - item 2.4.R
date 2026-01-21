library(palmerpenguins)
dados <- na.omit(penguins)
x <- as.numeric(dados$flipper_length_mm)
y <- as.numeric(dados$body_mass_g)

# 1. Modelo Original (Item 2)
mod_orig <- lm(y ~ x)
summary_orig <- summary(mod_orig)

# 2. Introdução de Outlier Artificial
# Vamos pegar o primeiro pinguim e aumentar a massa dele drasticamente (ex: 50kg)
y_outlier <- y
y_outlier[1] <- 50000 # Valor extremo (50kg onde o normal é ~4kg)

mod_outlier <- lm(y_outlier ~ x)
summary_outlier <- summary(mod_outlier)

# 3. Comparação de Métricas
# RMSE (Raiz do Erro Quadrático Médio)
rmse_orig <- sqrt(mean(mod_orig$residuals^2))
rmse_outlier <- sqrt(mean(mod_outlier$residuals^2))

# R-quadrado
r2_orig <- summary_orig$r.squared
r2_outlier <- summary_outlier$r.squared

# 4. Visualização
plot(x, y_outlier, pch=16, col=rgb(0,0,0,0.3), main="Impacto de um Outlier na Regressão")
abline(mod_orig, col="blue", lwd=2, lty=2) # Reta original
abline(mod_outlier, col="red", lwd=2)     # Reta com outlier
legend("topleft", legend=c("Original", "Com Outlier"), col=c("blue", "red"), lty=c(2,1))