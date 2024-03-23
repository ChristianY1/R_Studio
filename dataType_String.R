#------String
# https://chat.openai.com/c/2b342d51-63ad-4790-b459-6bb77c371f7a
usuario <- 'OkabeRintarou'

# nchar() cantidad de caracteres de un String 
nchar_usuario <-  nchar(usuario)

# tolower() convertir a minusculas
tolower(usuario)

#toupper() convertir a mayusculas
toupper(usuario)

# substr(x, start, stop) obtener un substring de un string
substr(usuario, 6, nchar_usuario)

# sub() substituir el primer caracter que coincida
sub('a', 'A', usuario) -> "OkAbeRintarou"

#gsub() substituir todos los caracteres que coinciden
gsub('a', 'A', usuario)

# paste() para concantenar

paste('Mi usuario es:', usuario, sep=' ')

#----Ejercicio-----

# Convertir el siguiente String: 
# 'Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper'
# a
# 'En la serie Madmen: Richard Whitman lucha por mantenerse en la cima
# 'del grupo Sterling-Cooper '

oracion <- 'Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper'

pedazo <-  'Don Draper lucha por mantenerse'

oracionEditada <-  sub('Don Draper', 'En la serie Madmen: Richard Whitman', oracion)

oracionEditada







