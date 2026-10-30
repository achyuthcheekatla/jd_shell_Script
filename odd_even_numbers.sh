#!/bin/bash

echo "Enter a Number"
read num

if [ $((num % 2)) -eq 0 ]; then
    echo "This is an even Number"
else 
    echo "This is an odd Number"
fi

echo "end of script"