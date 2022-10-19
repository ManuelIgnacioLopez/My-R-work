install.packages('Tmisc')
library(Tmisc)
data(quartet)
head(quartet)
#resumen Data
quartet %>% group_by(set) %>% summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))
# Graficar data
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)
# se ve que el resumen puede estar sesgado


#Instalamos otro paquete
install.packages('datasauRus')
library(datasauRus)
# graficamos
ggplot(datasaurus_dozen, aes(x=x,y=y,colour=dataset)) + geom_point() + theme_void() + theme(legend.position = "none") + facet_wrap(~dataset)


