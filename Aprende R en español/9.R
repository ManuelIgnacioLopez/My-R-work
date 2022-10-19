#Visualizaciones 2
#usamos ggplot2
#data penguins del paquete palmer pengun
install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2) 
library(palmerpenguins)
head(penguins)

#Veamos otro tipo de grafico
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_smooth(color='purple')

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_smooth(mapping = aes(linetype=species, color=species)) 
# tipos de suavizado 

#Suavizado loess
ggplot(data= penguins, aes(x=flipper_length_mm, y=body_mass_g))+  geom_point() + geom_smooth(method="loess")

#Suavizado GAM
ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) + geom_point() + geom_smooth(method="gam",formula = y ~s(x))
# referencias: http://statseducation.com/Introduction-to-R/modules/graphics/smoothing/

#Se pueden combinar graficos
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_smooth(color='gold') + geom_point(color='blue')

#Veamos otro tipo de grafico
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_jitter()

#A jitter plot represents data points in the form of single dots, in a similar manner to a scatter plot. 
#The difference is that the jitter plot helps visualize the relationship between a measurement variable and a categorical variable.
# Se aprecia mejor el solapamiento de puntos

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_jitter(color='blue') +geom_point(color='gold')

# link de referencia: https://datavizproject.com/data-type/jitter-plot/

#data diamonds que viene pre-descargado en Rstudio

#Veamos otro tipo de grafico
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut))
ggplot(data=diamonds) + geom_bar(mapping = aes(y=cut))

# para cambiar el color
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut), color='gold')
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut), fill='gold')
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, color=cut))
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))

#Podemos hacer graficos de 'stacking'
ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=clarity))

