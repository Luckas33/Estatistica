if (!requireNamespace("readr", quietly = TRUE)) install.packages("readr")
if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
library(readr)
library(dplyr)

dados <- read_csv("1-HomeWorks/HW-1/code/HW1_bike_sharing.csv")

media_temp <- mean(dados$temp)
mediana_temp <- median(dados$temp)
Q1_temp <- quantile(dados$temp, 0.25)
Q3_temp <- quantile(dados$temp, 0.75)

media_casual <- mean(dados$casual)
mediana_casual <- median(dados$casual)
Q1_casual <- quantile(dados$casual, 0.25)
Q3_casual <- quantile(dados$casual, 0.75)

media_registered <- mean(dados$registered)
mediana_registered <- median(dados$registered)
Q1_registered <- quantile(dados$registered, 0.25)
Q3_registered <- quantile(dados$registered, 0.75)

