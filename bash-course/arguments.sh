#! /bin/bash

# echo $@ --- Imprime en consola todos los arcumentos
# echo $# --- Imprime en consola el numero de argumentos
# echo $1 $2 --- Imprime en consola los argumentos 1 y 2

args=("$@")

echo "Result: ${args[0]} - ${args[1]} , ${args[2]}"