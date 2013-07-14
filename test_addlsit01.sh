#!bin/bash
#列表的基本用法的演示
#chenshuanglin 2012/3/13

if [ -n "$1" ] && echo "The first argument=$1" && [ -n "$2" ] && echo "The second argument=$2"
then
	echo "At least Two arguments are passed to this script"
else
	echo "Less than Two arguments are passed to this script"
fi
exit 0
