# Questão 2 item a)

source("C:\\Users\\Lucas Sobral\\Documents\\Estatistica\\1-HomeWorks\\HW-1\\code\\Questão 1 - item 1.1.R")

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
medianaIdade = mediana(curriculos$Idade....idade);
desvioPIdade = desvioPadrao(curriculos$Idade....idade);

#Nacionalidade
mediaNacionalidade = media(curriculos$Nacionalidade....nacionalidade);
medianaNacionalidade = mediana(curriculos$Nacionalidade....nacionalidade);
desvioPNacionalidade = desvioPadrao(curriculos$Nacionalidade....nacionalidade);

#Renda
mediaRenda = media(curriculos$Renda....renda);
medianaRenda = mediana(curriculos$Renda....renda);
desvioPRenda = desvioPadrao(curriculos$Renda....renda);

#Experiencia
mediaExperiencia = media(curriculos$Experiencia....experiencia);
medianaExperiencia = mediana(curriculos$Experiencia....experiencia);
desvioPExperiencia = desvioPadrao(curriculos$Experiencia....experiencia);



