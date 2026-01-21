# Instalação e Carregamento dos dados
if(!require(palmerpenguins)) install.packages("palmerpenguins")
library(palmerpenguins)

# Limpeza: removendo valores faltantes (NAs)
penguins_data <- na.omit(penguins)

# Definição das variáveis
# X = Comprimento da nadadeira (independente)
# Y = Massa corporal (dependente)
x <- as.numeric(penguins_data$flipper_length_mm)
y <- as.numeric(penguins_data$body_mass_g)

# Cálculo Manual dos Parâmetros (Mínimos Quadrados)
n <- length(x)
beta1_manual <- (n * sum(x*y) - sum(x) * sum(y)) / (n*sum(x^2) - (sum(x))^2)
beta0_manual <- mean(y) - beta1_manual * mean(x)

# Verificação com o comando lm()
modelo <- lm(body_mass_g ~ flipper_length_mm, data = penguins_data)

# --- RESULTADOS NO CONSOLE ---
cat("--- RESULTADOS DOS MÍNIMOS QUADRADOS ---\n")
cat("Manual: Intercepto (Beta0) =", beta0_manual, "\n")
cat("Manual: Inclinação (Beta1) =", beta1_manual, "\n\n")

cat("--- RESULTADOS COMANDO lm() ---\n")
print(coef(modelo))
cat("----------------------------------------\n")

# Gráfico de Dispersão e Reta de Regressão
plot(x, y, 
     main = "Regressão: Massa Corporal vs Comprimento da Nadadeira",
     xlab = "Comprimento da Nadadeira (mm)", 
     ylab = "Massa Corporal (g)",
     pch = 19, 
     col = adjustcolor("steelblue", alpha.f = 0.5))

# Adicionando a reta de regressão calculada
abline(modelo, col = "red", lwd = 3)

# Adicionando legenda ao gráfico
legend("topleft", legend = "Reta de Regressão", col = "red", lwd = 3)