#!bin/bash
#实现n!的运算
#使用递归实现阶乘运算
#chenshuanglin
#Date: 2013/7/13

fact()
{
	declare num=$1
	if [ "$num" = 0 ];
	then
		factorial=1
	else
		let decnum=num-1
		fact $decnum
		let factorial=$num*$?
	fi
	return $factorial
}

fact $1
echo "Factorical of $1 is $?"
exit 0
