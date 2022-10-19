#Visualizaciones 3
#usamos ggplot2
#data penguins del paquete palmer pengun y diamonds
library(ggplot2) 
library(palmerpenguins)
head(penguins)

#facetas se usan para separar nuestro grafico segun categorias y poder compararlas o aislarlas
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) ) + geom_point(color='purple') + facet_wrap(~species)


ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species) ) + geom_point() + facet_grid(sex~species)

head(diamonds)
ggplot(data = diamonds) +  geom_bar(mapping= aes(x=color, fill=cut)) + facet_wrap(~cut)

#filtrado de datos leer siguientes paginas:
#https://r4ds.had.co.nz/transform.html
#https://rladiessydney.org/courses/ryouwithme/03-vizwhiz-1/#1-4-putting-it-all-together-dplyr-ggplot

#Anotaciones en graficos
ggplot(data = diamonds) +  geom_bar(mapping= aes(x=color, fill=cut)) + facet_wrap(~cut) + labs(title='Diamantes segun Color y Corte',subtitle='Aqui se pone texto aclarativo', caption='Fuente= Diamonds data [R]') + annotate("text", x=5, y=3000, label="La mayooria son Premium o Ideal", color='blue', fontface="bold", size=2, angle=-30) 

# o 

p<- ggplot(data = diamonds) +  geom_bar(mapping= aes(x=color, fill=cut)) + facet_wrap(~cut) + labs(title='Diamantes segun Color y Corte',subtitle='Aqui se pone texto aclarativo', caption='Fuente= Diamonds data [R]')

p2<-p + annotate("text", x=5, y=3000, label="La mayooria son Premium o Ideal", color='blue', fontface="bold", size=2, angle=-30) 

# referencias para annotatee:
#https://ggplot2.tidyverse.org/reference/annotate.html
#https://ggplot2-book.org/annotations.html
#
#https://r-graph-gallery.com/233-add-annotations-on-ggplot2-chart.html


#para guardar los graficos
#graficos ejemplo como png

png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()

#graficos ejemplo como pdf
pdf(file = "example.pdf",    
    width = 4,     
    height = 4) 
plot(x = 1:10,     
     y = 1:10)
abline(v = 0)
text(x = 0, y = 1, labels = "Random text")
dev.off()

# Guardar los graficos que hicimos como PDF
pdf("diamantes.pdf",    
    width = 8,     
    height = 11)
print(p)     # Plot 1 --> primera pagina del  PDF
print(p2)     # Plot 2 ---> segunda pagina del PDF
dev.off()

# referencias:
#https://www.datanovia.com/en/blog/how-to-save-a-ggplot/
#https://ggplot2.tidyverse.org/reference/ggsave.html#saving-images-without-ggsave-