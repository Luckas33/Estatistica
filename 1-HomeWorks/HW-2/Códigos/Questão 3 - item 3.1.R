# Questão 3.1
rm(list = ls())


#Transformando as variáveis aleatórias uniformes em variáveis com distribuições normais padrão
boxMuller <- function(Unif1, Unif2){
  
  Z1 <- sqrt(-2*log(Unif1)) * cos(2*pi*Unif2);
  Z2 <- sqrt(-2*log(Unif1)) * sin(2*pi*Unif2);
  
  vetorZ <- c(Z1,Z2);
  
  return(vetorZ);
}

#Distribuição T
disT <- function(Z){
  return(62+(3.5*Z))
}

GeradorT <- function(k){
  #Criando variáveis aleatórias contínuas uniformes de 0 a 1 valores possívels
  
  vetor_total <- c()
  
  for (i in 1:k) {
    Unif1 <- runif(1,0,1); 
    Unif2 <-runif(1,0,1); 
    
    vetorZ <- boxMuller(Unif1,Unif2);
    
    vetorT <- disT(vetorZ);
    
    vetor_total <- c(vetor_total, vetorT)
  }
  return(vetor_total);
}

