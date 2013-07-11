#!bin/bash
#set parameters in the if then
#需要加入hello这个参数才会正确显示
#chenshuanglin 2013/7/11

if [ "$1" = "hello" ]; then
   echo "Hello! how are you!"
elif [ "$1" = "" ]; then
	echo "You must input parameter"
else 
	echo "The only accept parameter is hello"
fi	
