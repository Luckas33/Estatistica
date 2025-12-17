rm(list=ls())# removes a from workspace
ls()  # lists the objects in the workspace 

Rx <- c(0,1,2)
Px <- c(0.25,0.5,0.25)

plot(Rx, Px, 
     type = "h",          # "h" de histograma/high-density (linhas verticais)
     lwd = 5,             # Espessura da linha (Line WiDth)
     col = "darkblue",    # Cor das linhas
     ylim = c(0, 0.6),    # Limites do eixo Y para dar respiro acima da barra maior
     main = "Distribuição de Probabilidade (PMF)", # Título explicativo
     xlab = "Valores de X",         # Rótulo do eixo X
     ylab = "Probabilidade P(X=x)", # Rótulo do eixo Y
     xaxt = "n",          # Remove o eixo X padrão para customizarmos
     las = 1)             # Rotaciona os números do eixo Y para horizontal

# Adicionando bolinhas no topo (efeito Lollipop)
points(Rx, Px, pch = 19, col = "red", cex = 1.5)

# Adicionando o eixo X apenas nos números inteiros
axis(1, at = Rx)

# Adicionando um grid leve para leitura
grid(nx = NA, ny = NULL, lty = 2, col = "gray")
