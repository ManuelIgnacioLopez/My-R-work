#notas iniciales
# https://r4ds.had.co.nz/index.html
#https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/files
#https://datacarpentry.org/dc_zurich/R-ecology/05-visualisation-ggplot2.html
#usamoos Tidyverse y Tidyverse packages
#Usamos ggplot2 para visualizacion 


#Empieza el codigo
print("BUEEEENAAAAASSSS")
?print
#Siempre las variables empiezan con una letra. 
#Para asignar un valor se usa el simbolo <-
c2<-0
#para crear un DATA FRAME
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
#Utiliza la función dir.create para crear una nueva carpeta o directorio, o para guardar tus archivos
#Utiliza la función file.create() para crear un archivo en blanco.
?file.create 
#eliminar archivos de R utilizando la función unlink(). 
unlink (“new_csv_file.csv”)
#matrices
matrix(c(3:8), nrow = 2)








#vectores
vec<-c(22,33,12.5,6)
vec<-c("ana","triana","Augusto")
vec<-c(TRUE,FALSE,FALSE)
#funciones para vectores
#da el tipo de vector
typeof(c(“a” , “b”))
typeof(c(1L , 3L))

x <- c(33.5, 57.75, 120.05)
length(x)
#verificar si un vector es de un tipo específico mediante la función is: is.logical() is.double(), is.integer(), is.character().
is.character(x)
asignar un nombre diferente a cada elemento del vector
names(x) <- c("a", "b", "c")

#lista 
#sus elementos pueden ser de cualquier tipo
list("a", 1L, 1.5, TRUE)
#funciones lista
#str nos dice como esta compuesta la structure de la lista
str(list("a", 1L, 1.5, TRUE))
#nombrar los elementos de una lista
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

#pipes
#Es una herramienta de R para expresar una secuencia de operaciones. Se usa para aplicar el resultado de una función en otra función.
#Se representa con %>%
# pipe= and then




#FECHAS
today()
now()
#Convertir a partir de una cadena 
#el orden de ymd o mdy se lo da el como esta en el caracter que nosotros le entregamos
ymd("2021-01-20")
mdy("January 20th, 2021")
ymd(20210120)
#para la hora
ymd_hms("2021-01-20 20:11:59")
#para convertir una fecha-hora en una fecha.
as_date() 






