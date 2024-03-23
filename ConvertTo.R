#----Conversion de unidades----------
# A numeric
as.numeric()

# A string
as.character(5.6)

# A logical
# cualquier número sera TRUE excepto 0 que sera False
as.logical(0)
as.logical(987)


# De local a numeric
as.numeric(TRUE)
as.numeric(FALSE)

#-----Condicionales-----------
# If
condicion <- TRUE
if (condicion) {
  print('hola mundo')
}

# else if
elo <- 560
if (elo >= 750) {
  print('Gran Maestro')
}else if ( elo >= 500){
  print('Novato')
}



# if else
# las condicionales en R nos permite hacer validaciones
# dentro de un vector sin necesidad de usar bucles

numeros <- 1:10
ifelse(numeros %% 2 == 0, 'par', 'impar')
















