#! /bin/bash

# number=0

# while [ $number -lt 10 ]
# do
#     echo $number
#     number=$((number + 1))
# done

# # -----------

# until [ $number -ge 10 ]
# do
#     echo $number
#     number=$((number + 1))
# done

# -----------

# for i in {0..100..10}
# do
#     echo $i
# done

for (( i=0; i < 10; i++ ))
do
    echo $i
done