#! /bin/bash

### Importante: El case solo funciona en comparaciones de textos, no con valores aritmeticos

echo "Escoge entre el valor 1 o 2:"
read valor

case $valor in 
    1) 
        echo "Tu escogiste el numero 1"
    ;;
    2)
        echo "Tu escgiste el numero 2"
    ;;
    *)
        echo "Valor incorrecto"
    ;;
esac