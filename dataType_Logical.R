#-----Logical

calificacion_examen1 <- 8.5
calificacion_examen2 <-  5.9

# Operadores

calificacion_examen1 == 10
calificacion_examen1 >= 6

# AND
calificacion_examen1 > 6 & calificacion_examen1 < 8

# OR
calificacion_examen1 < 6 | calificacion_examen2 < 6

# Diference
calificacion_examen1 != calificacion_examen2




username <- 'xXNoobKillerXx'

username == 'Faker'

val_numchar <- nchar(username) > 10

# Voltear un valor logico
val_noob <- grep('Noob', username)
val_noob

# Validar que no comience con
val_punto <-  substr(username, 1, 1) != '.'


# Se pueden hacer varias validaciones a la vez
val_numchar & val_noob & val_punto


# Sumando valores logicos

TRUE == 1
FALSE == 0

TRUE + TRUE + FALSE + FALSE + TRUE

val_final <- (TRUE&TRUE) | (FALSE&TRUE)
val_final

# Ejercicio

# Genere un codigo que regrese TRUE si un usuario cumple con todo 
# lo siguiente y FALSE en caso contrario:

usuario <- 'RIOT Mitclan'
charNum <- nchar(usuario) < 10
charNum

subStrExist <- grep('RIOT', usuario)
subStrExist

stringDiff <- usuario != 'ElVaipa' & usuario != 'Ixtli'
stringDiff

charNum & subStrExist & stringDiff 









