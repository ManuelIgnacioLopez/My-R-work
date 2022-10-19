#Visualizaciones 1
#usamos ggplot2
#data penguins del paquete palmer pengun
install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2) 
library(palmerpenguins)

#para graficar hay 2 partes base

#1 la capa base: ggplot(data = )
ggplot(data = penguins)
#2 las instrucciones [sumamos capas al agregar el operador +]
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
# La función geom_point() usa puntos para crear diagramas de dispersión, la función geom_bar usa barras para crear gráficos de barras, etc. En este caso, elige la función geom_point para crear un diagrama de dispersión de puntos.
#Cada función geométrica en ggplot2 toma un argumento de mapeo.
#Esto define cómo se aplican variables de tu conjunto de datos a propiedades visuales.
#El argumento de mapeo siempre se utiliza en conjunto con la función aes().
#Los argumentos X e Y de la función aes() especifican qué variables aplicar al eje X y al eje Y del sistema de coordenadas.


#una forma mas pro:
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point()