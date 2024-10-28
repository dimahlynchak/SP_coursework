#!/bin/bash

# Генерація випадкових чисел із використанням gshuf замість shuf
gshuf -i 1-100 -n 5 > random_numbers.txt
echo "Згенеровані числа:"
cat random_numbers.txt

min=$(sort -n random_numbers.txt | head -n 1)
echo "$min" > random_numbers.txt
echo "Залишено найменше число:" $min
