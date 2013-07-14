#!bin/bash
#演示利用数组实现堆栈的方法
#chenshuanglin 2013/7/14

MAXTOP=5            #堆栈所能存放元素的最大值
declare TOP=0          #定义栈顶指针，初始值为0

TEMP=                #定义一个临时全局变量，存放出栈元素，初始值为空
declare -a STACK     #定义一个全局数组

#进栈操作，可以同时将多个元素压入栈顶
push()
{
	if [ -z "$1" ]  #若无输入任何参数，立即返回
	then
		return
	fi
	while [ $# != 0 ] #$#表示参数的个数
	do
		if [ "$TOP" = $MAXTOP ]
		then
			echo "已经到栈顶了，无法在进行压栈操作"
			return
		fi
		let TOP=TOP+1   #栈顶加1
		STACK[$TOP]=$1  #将第一个参数压入堆栈
		shift           #脚本参数左移一位,$#减1
	done
	return
}

#pop函数用于出栈操作
pop()
{
	TEMP=                            #清空出栈数据这个临时变量
	if [ "$TOP" = "0" ]              #若堆栈为空，无法进行出栈操作
	then
		echo "对栈为空，无法进行出栈操作"
		return 
	fi
	TEMP=${STACK[$TOP]}
	unset STACK[$TOP]
	let TOP=TOP-1
	return
}

#显示当前堆栈内的信息，以及TOP指针
show_stack()
{
	echo "-----------------------------"
	echo "----------STACK--------------"
	for i in ${STACK[@]}
	do
		echo $i
	done
	echo
	echo "TOP=$TOP"
}

#以下是测试堆栈功能的片段
push chenshuanglin
show_stack
push xian beijing fuzhou shanghai shijian
show_stack

pop
echo $TEMP
pop
echo $TEMP
show_stack
push najing
push yanan
show_stack
