#!/bin/bash -x
read -p "Enter the value :" a
read -p "Enter the value :" b
read -p "Enter the value :" c
equation_1=$((($a+$b)*$c))
equation_2=$((($a*$b)+$c))
equation_3=$((($c+$a)/$b))
equation_4=$((($a%$b)+$c))

echo "Result of (a+b*c)=" $equation_1
echo "Result of (a*b+c)=" $equation_2
echo "Result of (c+a/b)=" $equation_3
echo "Result of (a%b+c)=" $equation_4

declare -i results
results[1]=$equation_1
results[2]=$equation_2
results[3]=$equation_3
results[4]=$equation_4
echo ${results[@]}
for(( i=0; i<4; i++ ))
do
	n=$(($i+1))
	arr[i]=${results[n]}
done
echo ${arr[@]}
