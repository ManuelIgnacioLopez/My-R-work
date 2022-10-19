#Data Frame
# Tips curso:
#Siempre ponerle nombre a todas las columnas
# No cambiar nombre a variables
# No crear nombres de filas
# Tidy data standards
# 1- Variables organizadas en columnas 2- Observaciones organizadas en filas 3- Cada valor esta en una sola celda

#Usamos packete Tidyverse y ggplot2 y data diamonds
library(ggplot2)
data('diamonds')
#formas de ver info rapida de la data
head(diamonds)
str(diamonds)
colnames(diamonds)
#Agregar una columna
mutate(diamonds, carat_2=carat*1000)
