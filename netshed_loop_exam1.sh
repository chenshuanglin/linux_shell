#!bin/bash
#该程序是实现九九乘法表
#chenshuanglin 2012/7/13

for(( i=1; i<=9; i++))
do
	for(( j=1; j<=i; j++ ))
	do
		let temp=i*j
		echo -n "$i*$j=$temp  "
	done
	echo ""
done
