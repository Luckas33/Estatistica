# Item 1.1

gases <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 21.9, 10.5,17.3, 6.2, 18.0, 22.9, 24.6, 19.4, 12.3, 15.9, 20.1, 17.0, 22.3, 27.5,23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 20.9, 21.4, 18.0, 24.3, 11.8, 17.9,18.7, 12.8, 15.5, 19.2, 13.9, 28.6, 19.4, 21.6, 13.5, 24.6 ,20.0, 24.1,9.0, 17.6, 25.7, 20.1, 13.2, 23.7, 10.7, 19.0, 14.5, 18.1, 31.8, 28.5,22.7, 15.2, 23.0, 29.6, 11.2, 14.7, 20.5, 26.6, 13.3, 18.1, 24.8, 26.1,7.7, 22.5, 19.3, 19.4, 16.7, 16.9, 23.5, 18.4)

gases_ordenados = sort(gases)

media <- function(ConjuntoDados){# Média igual ao calculado pela calculadora
  somatorio <- 0;
  for (valor in ConjuntoDados) {
    somatorio = valor + somatorio;
  }
  resultado = somatorio / length(ConjuntoDados)
  
  return (resultado);
}


mediana <- function(ConjuntoOrdenado){
  metade = length(ConjuntoOrdenado) / 2
  
  if (length(ConjuntoOrdenado) %% 2 == 0){ # Mediana igual ao calculado pela calculadora
    NovoConjunto = ConjuntoOrdenado[metade] + ConjuntoOrdenado[metade + 1]
    resultado = NovoConjunto / 2
  }else{
    resultado = ConjuntoOrdenado[metade]
  }
  
  
  return(resultado)
}

moda <- function(ConjuntoOrdenado){
  
  
  count = 0;
  countTemp = 0;
  
  for (valor in ConjuntoOrdenado) {
    if(valor + 1 == valor - 1 ){
      countTemp = countTemp + 1
    }
    if(count < countTemp){
      
    }
  }
}


media = media(gases)
media

mediana = mediana(gases_ordenados)
mediana

mode(gases)

Amplitude = 31.8 - 6.2

