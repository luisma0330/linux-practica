#! /bin/bash

## Sirve para pasarle un archivo como parametro de entrada

while read line
do
    echo $line
done < "${1:-/dev/stdin}"