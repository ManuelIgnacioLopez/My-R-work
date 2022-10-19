#Visualizaciones 1
#usamos ggplot2
#data penguins del paquete palmer pengun
install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2) 
library(palmerpenguins)
head(penguins)

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

# para mejorar el grafico podemos hacer una distinción por especie por color
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) + geom_point()

# O para mejorar el grafico podemos hacer una distinción por especie por forma
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species)) + geom_point()

# para mejorar el grafico podemos hacer una distinción por especie por color, forma y tamaño
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=sex, size=body_mass_g)) + geom_point()

# otra opcion es alpha (cambia intensidad de color y transparencia)
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=sex, alpha=body_mass_g)) + geom_point()

#podemos poner un cierto color, para esto es importante no ponerlo dentro de aes()
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=sex, size=body_mass_g) ) + geom_point(color='purple')


# para mas informacion: http://statseducation.com/Introduction-to-R/modules/graphics/aesthetics/

