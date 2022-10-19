id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
print(employee)
# separa los datos de una columna por el caracter que le digamos
employee2 <- separate(employee, name, into=c('first_name','last_name'),sep=' ')

unite(employee2, 'Apellido, Nombre',  last_name, first_name,sep=', ' )

# Ver funciones  pivot_longer() y pivot_wider() de transformacion de formato de Tablas

