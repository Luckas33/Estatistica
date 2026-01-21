# Questão 2.1

x = penguins$body_mass_g #Massa dos pinguins

y = penguins$bill_length_mm #Tamanho do bico

# Gráfico bonito e simples
ggplot(dados_plot, aes(x = Massa, y = Bico)) +
  geom_point(color = "darkblue", size = 3, alpha = 0.6) +
  labs(title = "Relação: Massa vs. Tamanho do Bico",
       x = "Massa Corporal (g)",
       y = "Comprimento do Bico (mm)") +
  theme_minimal() 
