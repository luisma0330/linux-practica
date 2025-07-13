#! /bin/bash

# >, <, =, =! ---> Sirven para comparar cadenas

# Comparando enteros []
# -gt ---> mayor
# -lt ---> menor
# -ge ---> mayor o igual
# -le ---> menor o igual
# -eq ---> igual
# -ne ---> distinto

# Operadores Booleanos []
# -a ---> AND
# -o ---> OR



age=10

if [ $age -eq 10 ]
then 
    echo "el numero es igual"
else
    echo "el numero no es igual"
fi


# Con dobles parentesis es posible usar la sintaxis
# mas parecida con los lenguajes de programacion

if (( age == 11 ))
then 
    echo "el numero es igual"
else
    echo "el numero no es igual"
fi

age=20

if (( $age > 18 ))
then
    echo "Eres un adulto"
elif (( $age >= 17 ))
then
    echo "Casi eres un adulto"
else
    echo "Eres un niño"
fi