#!/bin/bash -x
read -p "Enter the value :" a
read -p "Enter the value :" b
read -p "Enter the value :" c
equation_1=$((($a+$b)*$c))
equation_2=$((($a*$b)+$c))
echo "Result of (a+b*c)=" $equation_1
echo "Result of (a*b+c)=" $equation_2
