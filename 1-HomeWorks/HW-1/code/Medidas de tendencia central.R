# Medidas de tendência central

media <- function(ConjuntoDados){
  somatorio <- 0;
  for (valor in ConjuntoDados) {
    somatorio = valor + somatorio;
  }
  resultado = somatorio / length(ConjuntoDados)
  
  return (resultado);
}


mediana <- function(ConjuntoOrdenado){
  metade = length(ConjuntoOrdenado) / 2
  
  if (length(ConjuntoOrdenado) %% 2 == 0){ 
    NovoConjunto = ConjuntoOrdenado[metade] + ConjuntoOrdenado[metade + 1]
    resultado = NovoConjunto / 2
  }else{
    resultado = ConjuntoOrdenado[metade]
  }
  
  
  return(resultado)
}

moda <- function(ConjuntoOrdenado) {
  N <- length(ConjuntoOrdenado)
  
  max_frequencia <- 0      
  moda_valor <- NULL       
  
  for (i in 1:(N-1)) {
    
    count_atual <- 1
    
    j <- i
    while (j < N && ConjuntoOrdenado[j] == ConjuntoOrdenado[j+1]) {
      count_atual <- count_atual + 1
      j <- j + 1
    }
    
    if (count_atual > max_frequencia) {
      max_frequencia <- count_atual
      moda_valor <- ConjuntoOrdenado[i]
    }
  }
  
  if (max_frequencia <= 1 && N > 0) {
    tabela <- table(ConjuntoOrdenado)
    max_tabela <- max(tabela)
    return(as.numeric(names(tabela)[tabela == max_tabela]))
  } else if (max_frequencia > 1) {
    return(moda_valor)
  } else {
    return(NULL) 
  }
}

variancia <- function(ConjuntoDados,media){
  somatorio <- 0
  ConjuntoDesvio <- NULL;
  
  for (i in 1:length(ConjuntoDados)) {
    ConjuntoDesvio[i] = (ConjuntoDados[i] - media)^2
  }
  for (valor in ConjuntoDesvio) {
    somatorio = valor + somatorio
  }
  resultado = somatorio / (length(ConjuntoDados) - 1);
  
  return(resultado);
}

desvioPadrao <- function(variancia){
  return(sqrt(variancia));
}

coeficienteVariacao <- function(variancia,media){
  return((variancia/media) * 100);
}