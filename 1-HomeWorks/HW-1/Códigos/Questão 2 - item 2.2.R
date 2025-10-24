if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
library(dplyr)

dados <- data.frame(
idade = c(28,34,46,26,37,29,51,31,39,43,58,44,25,23,52,42,48,33,38,46),
nacionalidade = c("Italiana","Inglesa","Belga","Espanhola","Italiana", "Espanhola","Francesa","Belga","Italiana","Italiana","Italiana","Inglesa","Francesa","Espanhola","Italiana","Alemã","Francesa","Italiana","Alemã","Italiana"),
renda = c(2.3,1.6,1.2,0.9,2.1,1.6,1.8,1.4,1.2,2.8,3.4,2.7,1.6,1.2,1.1,2.5,2,1.7,2.1,3.2),
experiencia = c(2,8,21,1,15,3,28,5,13,20,32,23,1,0,29,18,19,7,12,23)
)

resumo <- dados %>%
  group_by(nacionalidade) %>%
  summarise(
    renda_media = mean(renda),
    experiencia_media = mean(experiencia)
  )

print(resumo)

renda_max <- resumo %>%
  filter(renda_media == max(renda_media))
  
experiencia_max <- resumo %>%
  filter(experiencia_media == max(experiencia_media))

cat("\nNacionalidade com maior renda média desejada:\n")
print(renda_max)

cat("\nNacionalidade mais experiente:\n")
print(experiencia_max)
