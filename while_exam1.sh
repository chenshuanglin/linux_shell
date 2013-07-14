#!bin/bash
#该程序是演示使用控制标志的while循环实现1~10内的数

echo "Please input the num:"
read num

#初始化标志的值
signal=0

while [ "$signal" != 1 ]
do
	if [ "$num" -lt $1 ]
	then
		echo "Too small ,Try again!"
		read num
	elif [ "$num" -gt $1 ]
	then
		echo "Too high.Try again"
		read num
	else
		signal=1
		echo "Congratulation,you are right! "
	fi
done
			
		
