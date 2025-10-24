# Questão 2 item a)

source("Estatistica\\1-HomeWorks\\HW-1\\códigos\\Medidas de tendencia Central.R")

idade <- c(28,34,46,26,37,29,51,31,39,43,58,44,25,23,52,42,48,33,38,46);
nacionalidade <- c("Italiana","Inglesa","Belga","Espanhola","Italiana", "Espanhola","Francesa","Belga","Italiana","Italiana","Italiana","Inglesa","Francesa","Espanhola","Italiana","Alemã","Francesa","Italiana","Alemã","Italiana");
renda <- c(2.3,1.6,1.2,0.9,2.1,1.6,1.8,1.4,1.2,2.8,3.4,2.7,1.6,1.2,1.1,2.5,2,1.7,2.1,3.2)
experiencia <- c(2,8,21,1,15,3,28,5,13,20,32,23,1,0,29,18,19,7,12,23);

idadeOrdenada = sort(idade);
nacionalidadeOrdenada = sort(nacionalidade);
rendaOrdenada = sort(renda);
experienciaOrdenada = sort(experiencia);

curriculos <- data.frame(
  Idade <- idadeOrdenada,
  Nacionalidade <- nacionalidadeOrdenada,
  Renda <- rendaOrdenada,
  Experiencia <- experienciaOrdenada
)

# Idade
mediaIdade = media(curriculos$Idade....idade);
mediaIdade
mean(curriculos$Idade....idade)

medianaIdade = mediana(curriculos$Idade....idade);
medianaIdade
median(curriculos$Idade....idade)

varianciaIdade = variancia(curriculos$Idade....idadeOrdenada,mediaIdade);
varianciaIdade
var(curriculos$Idade....idade)

desvioPIdade = desvioPadrao(varianciaIdade);
desvioPIdade
sd(curriculos$Idade....idade)

#Renda
mediaRenda = media(curriculos$Renda....renda);
mediaRenda
mean(curriculos$Renda....renda)

medianaRenda = mediana(curriculos$Renda....renda);
medianaRenda
median(curriculos$Renda....renda)

varianciaRenda = variancia(curriculos$Renda....rendaOrdenada,mediaRenda);
varianciaRenda
var(curriculos$Renda....renda)

desvioPRenda = desvioPadrao(varianciaRenda);
desvioPRenda
sd(curriculos$Renda....renda)

#Experiencia
mediaExperiencia = media(curriculos$Experiencia....experiencia);
mediaExperiencia
mean(curriculos$Experiencia....experiencia)


medianaExperiencia = mediana(curriculos$Experiencia....experiencia);
medianaExperiencia
median(curriculos$Experiencia....experiencia)

varianciaExperiencia = variancia(curriculos$Experiencia....experienciaOrdenada,mediaExperiencia);
varianciaExperiencia
var(curriculos$Experiencia....experiencia)

desvioPExperiencia = desvioPadrao(varianciaExperiencia)
desvioPExperiencia
sd(curriculos$Experiencia....experiencia)




