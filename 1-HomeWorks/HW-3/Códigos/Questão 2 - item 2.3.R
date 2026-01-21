# Questão 2.3
# Calcule os resíduos da regressão e apresente uma representação gráfica dos mesmos.
library(ggplot2)
library(palmerpenguins)

# 1. Definir variáveis
MassaPenguins = penguins$body_mass_g
TamanhoBico = penguins$bill_length_mm

# 2. Ajustar o Modelo Linear
modelo_linear <- lm(TamanhoBico ~ MassaPenguins)

# 3. Criar Data Frame com Resíduos e Valores Ajustados
dados_residuos <- data.frame(
  Fitted = fitted(modelo_linear),
  Residuals = residuals(modelo_linear)
)

# 4. Plotar Gráfico de Resíduos (Residuals vs Fitted)
ggplot(dados_residuos, aes(x = Fitted, y = Residuals)) +
  geom_point(color = "darkred", alpha = 0.6) +
  geom_hline(yintercept = 0, linetype = "dashed", color = "blue") +
  labs(title = "Análise de Resíduos: Resíduos vs. Valores Ajustados",
       x = "Valores Ajustados (Preditos)",
       y = "Resíduos") +
  theme_minimal()

# 5. Calcular Métricas (RMSE e R2)
rmse_valor <- sqrt(mean(residuals(modelo_linear)^2, na.rm = TRUE))
r2_valor <- summary(modelo_linear)$r.squared

# 6. Exibir os resultados no console
cat("RMSE:", round(rmse_valor, 4), "mm\n")
cat("R-squared:", round(r2_valor, 4), "\n")
