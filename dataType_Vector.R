#----Vector----

# Vector numerico

vistas <- c(8321, 2974, 5792, 4932, 4889, 7433, 6651)
vistas

nombres <- c('Video 1','Video 2','Video 3','Video 4','Video 5','Video 6','Video 7')
nombres

# Operaciones basicas

length(vistas)

# Elemento maximo dentro de una lista
max(vistas)

# Elemento minimo dentro de una lista
min(vistas)

# Elemento medio dentro de una lista
mean(vistas)

# Suma todos los elementos dentro de una lista
sum(vistas)

# En el lenguaje de R se puede aplicar operaciones
# a cada elemento dentro de una lista
vistas + 1000
vistas / 500
log(vistas)
nchar(nombres)

# Agregar un elemento a una lista
# numerica
vistas <- c(vistas, 5600)

# con caracteres
nombres <- c(nombres, 'Video 8')


# Creacion de un diccionario
# names(clave) <- valor
names(vistas) <- nombres


# Ordenar DESC
sort(vistas)

# Ordenar ASC
sort(vistas, decreasing = TRUE)

# Para consultar alguna funcion usar ?sort 

#-----------------Vectores Logicos-------------------
# Condiciones logicas sobre vectores
# se pueden hacer consultas usando operadores logicos

# Qué videos tienen mas de 6000 vistas ?
vistas > 6000

# Cuantos videos tienen mas de 6000 vistas ?
# Recordar que TRUE = 1
sum(vistas > 6000)

# Algún video tiene mas de 8000 vistas ?
any(vistas > 8000)
any(vistas > 10000)


# Todos los videos tienen mas de 2000 vistas ?
all(vistas > 2000)

all(vistas > 5000)


# Qué videos tienen menos de 5000 vistas ?
vistas < 5000

# Indice de los elementos que son mayores a 5000 vistas
which(vistas < 5000)

#------Extracion de informacion-------
# Obtener un subconjunto de un vector
vistas[c(3, 4)]
vistas[3]

# Obtener un subconjunto con excepciones
vistas[-4] # sin el cuarto elemento
vistas[-c(2,4)] # sin los elementos 2 y 4 

# Usando valores lógicos
vistas[c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE)] # Solo con los elemntos 2 y 4

vistas[vistas > 7000]
vistas[vistas > 4000 & vistas < 5000]

vistas[c('Video 3', 'Video 4')]

# Modificacion de elementos dentro de un vector
vistas[1] <- 500
vistas[c(2,3,4)] <- c(600, 700, 800)
vistas[vistas > 7000] = 7000


#-------Conjuntos--------------
andres <- c('GTA V', 'Mortal Combat', 'Zelda', 'Skyrim')
julio  <- c('Mario Kart', 'Zelda', 'Devil May Cry', 'GTA V')

# Union
union(andres, julio)

# Interseccion
intersect(andres, julio)

# Diferencia
# A - B
setdiff(andres, julio)

# Conjuntos iguales
setequal(andres, julio)

# Elemento dentro de un cojunto o array
'Zelda' %in% andres

# Elementos dentro de un conjunto
c('Age of Empires', 'Mario Kart') %in% andres


#-------Generacion de array----------------
# Generacion de un array desde el 1 al 50 
# usando :
1:50
20:1 # dependiendo el orden se genera el array de manera ASC o DESC
-5:5 
# Si queremos controlar el salto con el que se genera
seq(from = 0, to = 50, by = 1)

seq(from = 0, to = 50, by = 10) # de 10 en 10 

seq(from = 0, to = 50, by = 0.5) # de 0.5 en 0.5

#----- Division de caracteres--------
juego <- 'Mortal Combat'
split <- strsplit(juego, ' ') # se separa según el espacio
split <- strsplit(juego, '')[[1]] # separa cada caracter dentro de la cadena
class(split)

split == 'o' # debido a que es un array comprueba en cada uno de los elementos dentro de la lista
             # lo que nos devuelve varios valores logicos

any(split == 'o') # se comprueba si hay la letra o dentro de la cadena de caracteres, devuelve un
                  # solo valor booleano


#----Generacion de vectores de manera aleatoria
resultados <- c('victoria', 'derrota')
sample(resultados) # revuelve el orden de los elementos dentro de una lista

# Cuando colocamos el parametro mayor que la cantidad de elementos que hay dentro de una lista
# este deberemos colocar el parametro replace en TRUE para que genere los elementos faltantes
sample(resultados, size = 10, replace = TRUE)

# Si queremos modificar la frecuencia con lo que aparece cada elemento 
# colocamos el parametro prob
sample(resultados, size  = 10, replace = TRUE, prob = c(0.3, 0.7))

#--------Distribuciones de probabilidad------------

# Distribucion uniforme
runif(n=20, min = 0, max = 2)

# Distribucion normal
rnorm(n=20, mean = 15, sd =2)
  
# Distribucion bonomial
rbinom(n = 20, size = 1, p=0.5)

# Distribuciones de probabilidad fijando la semilla para
# la generación de los números aleatorios

# Distribucion Uniforme con semilla 123
set.seed(123)
runif(n = 1)

#--------Vectores con diferentes tipos de datos-------------

# En este ejemplo a pesar de que se pueden ingresar cualquier tipo de datos
# al imprimir los elementos son convertidos a texto
ejemplo <- c(3.1415, TRUE, 'God of War')

# Ejercicio 1
# Cuántos números entre el 1 y 1 000 000 son divisibles entre 6 y 8 ?

seqNumbers <-  1:1000000
sum(seqNumbers%%6 == 0 & seqNumbers%%8==0)

# Ejercicio 2
# El vector compras contiene 10 000 valores  que son los montos de compras
# online 

set.seed(123)
compras <- rnorm(n = 10000, mean = 5000, sd = 1000)

# Cuáles son los montos de las compras en las entradas 435 y 678 ?
compras[435]

compras[678]

# Cuántas compras fueron mayores a 8 000 dolares ?
sum(compras>8000)

# Nota: una vez hecha una consulta con which podemos obtener los valores de
# los índices que nos proporciona which
compras[which(compras >8000)]


# Cuales fueron el monto máximo y mínimo ?
max(compras)
min(compras)

# Que porcentaje de compras fueron entre 4000 y 6 000 dólares ?
compras[which(compras > 4000 & compras < 6000)]
rangoCompras <- sum(compras > 4000 & compras < 6000)

n = 10000
porcentaje <- (rangoCompras*100)/10000

# Ejecicio 3

# Dada la siguiente cadena

# Dividimos los caracteres que hay dentro de la cadena
usuario <- c(strsplit('NoobSlayer9', '')[[1]])
numbers = c(0:9)

# Genere un código que regrese TRUE si usuario contiene al menos un número
any(usuario %in% numbers)

# Genere un código que regrese TRUE si usuario contiene solamente números
all(usuario %in% numbers)























