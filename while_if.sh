#!/bin/bash

counter=1
while [ $counter -le 10 ]
do
    if [ $counter -eq 5 ]
    then
        echo " half "
    else
        echo " $counter "
    fi
    counter=$((counter+1))
done

