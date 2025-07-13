#! /bin/bash

# Con la sintaxis [[ 
# && ---> AND
# || ---> OR

age=19

if [[ $age -gt 18 && $age -lt 40 ]]
then
    echo "Edad valida"
else
    echo "Edad no valida"
fi
