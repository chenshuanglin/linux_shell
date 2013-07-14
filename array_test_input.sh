#!bin/bash
#用read 从键盘读数组

declare -a city
read -a city
echo

for i in "${city[@]}"
do
	echo $i
done

#清空city[0]的元素
unset city[0]
echo ${city[1]}
unset city
echo ${city[1]}

