# Questão 2.3
# Calcule os resíduos da regressão e apresente uma representação gráfica dos mesmos.

MassaPenguins = penguins$body_mass_g 

TamanhoBico = penguins$bill_length_mm 


# 1. Ajustar o Modelo Linear ( caso nao tenha sido salvo antes )
modelo _ linear <- lm ( Tamanho _ mm ~ body _ mass _g , data = penguins )
# 2. Criar Data Frame com Residuos e Valores Ajustados
dados _ residuos <- data . frame (
  Fitted = fitted ( modelo _ linear ) ,
  Residuals = residuals ( modelo _ linear )
)

# 3. Plotar Grafico de Residuos ( Residuals vs Fitted )
ggplot ( dados _ residuos , aes ( x = Fitted , y = Residuals ) ) +
  geom _ point ( color = " darkred " , alpha = 0.6) +
  geom _ hline ( yintercept = 0 , linetype = " dashed " , color = " blue " ) +
  labs ( title = " Analise ␣ de ␣ Residuos : ␣ Residuos ␣ vs . ␣ Valores ␣ Ajustados " ,
         x = " Valores ␣ Ajustados ␣ ( Preditos ) " ,
         y = " Residuos " ) +
  theme _ minimal ()

#Em seguida, calcule a raiz do erro quadrático médio (RMSE, do inglês) e o coeficiente de determinação R2. Comente sobre os resultados obtidos.