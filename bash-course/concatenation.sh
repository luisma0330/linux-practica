#! /bin/bash

echo "Enter a name"
read name

echo "Write an adjetive"
read adjetive

# result="$name is $adjetive"
# echo $result

echo ${name,,} ## convertir a minuscula
echo ${name^^} ## convertir a minuscula

echo ${name,,[AEIOU]} # convertir a minuscula solo las vocales
echo ${name^^[aeiou]} # convertir a mayuscula solo las vocales
