# Questão 2.5
library(ggplot2)
library(dplyr)
idade <- c(28,34,46,26,37,29,51,31,39,43,58,44,25,23,52,42,48,33,38,46);
renda <- c(2.3,1.6,1.2,0.9,2.1,1.6,1.8,1.4,1.2,2.8,3.4,2.7,1.6,1.2,1.1,2.5,2,1.7,2.1,3.2)
nacionalidade <- c("Italiana","Inglesa","Belga","Espanhola","Italiana", "Espanhola","Francesa","Belga","Italiana","Italiana","Italiana","Inglesa","Francesa","Espanhola","Italiana","Alemã","Francesa","Italiana","Alemã","Italiana");

idadeOrdenada = sort(idade);
nacionalidadeOrdenada = sort(nacionalidade);
rendaOrdenada = sort(renda);

curriculos <- data.frame(
  Idade = idadeOrdenada,
  Nacionalidade = nacionalidadeOrdenada,
  Renda = rendaOrdenada
)

#######################################################

idade_media_nacionalidade <- curriculos %>%
  group_by(Nacionalidade) %>%
  summarise(Idade_Media = mean(Idade)) %>%
  ungroup() %>%
  arrange(desc(Idade_Media))

grafico_idade_media <- ggplot(idade_media_nacionalidade, aes(
  x = reorder(Nacionalidade, Idade_Media), 
  y = Idade_Media,
  fill = Nacionalidade
)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = round(Idade_Media, 1)), vjust = -0.5) +
  labs(
    title = "Idade Média por Nacionalidade",
    x = "Nacionalidade",
    y = "Idade Média"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

print(grafico_idade_media)

####################################################################

renda_media_nacionalidade <- curriculos %>%
  group_by(Nacionalidade) %>%
  summarise(Renda_Media = mean(Renda)) %>% # Calcula a média da Renda
  ungroup() %>%
  arrange(desc(Renda_Media)) # Ordena o resultado para o gráfico


grafico_renda_media <- ggplot(renda_media_nacionalidade, aes(
  x = reorder(Nacionalidade, Renda_Media), 
  y = Renda_Media,
  fill = Nacionalidade 
)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = round(Renda_Media, 2)), vjust = -0.5) + 
  labs(
    title = "Renda Média por Nacionalidade",
    x = "Nacionalidade",
    y = "Renda Média (Unidades Arbitrárias)",
    caption = paste("Dados de", nrow(curriculos), "indivíduos")
  ) +
  theme_minimal() +
  theme(legend.position = "none", 
        axis.text.x = element_text(angle = 45, hjust = 1)) 

print(grafico_renda_media)

