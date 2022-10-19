# usamos el paquete Tidyverse y dplyr
#usamos data ToothGrowth
data("ToothGrowth")
View(ToothGrowth)
#filtramos segun dose
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
# se ordena segun len
arrange(filtered_tg,len)
# si queremos que sea en orden ascendente
arrange(filtered_tg,-len)
#otra forma
arrange(filter(ToothGrowth,dose==0.5))
#con pipes
# se puede poner %>% con cmd + shift + m
filtered_toothg <-ToothGrowth %>% filter(dose==0.5) %>% arrange(len)
filtered_toothg
# y esto es una cosa rara q usa para cuando hay valores nulos
filtered_toothg <-ToothGrowth %>% filter(dose==0.5) %>% group_by(supp) %>% summarize(mean_len=mean(len,na.rm=T),.group="drop")
filtered_toothg
#ver 6 filas
head(ToothGrowth)
# cambiar a mayusculas
TOOTH<-rename_with(ToothGrowth,toupper)


