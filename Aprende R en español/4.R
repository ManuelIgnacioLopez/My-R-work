install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
library("dplyr")
install.packages("tidyr")
library("tidyr")
#palmerpenguins es un paquete de datos
install.packages("palmerpenguins")
glimpse(penguins)
penguins%>% group_by(species) %>% rename(anno=year)
clean_names(penguins)
# para la funcion drop_na() necesitamos tidyr
penguins%>% group_by(species) %>% drop_na() %>% summarize(meann=mean(bill_length_mm))

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(maxx=max(bill_length_mm),meann=mean(bill_length_mm))
