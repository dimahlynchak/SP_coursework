#!/bin/bash

n=${1:-5} # Використовуємо 5, якщо параметр не задано
top -l 1 > top_output.txt
head -n $n top_output.txt > top_output_short.txt
