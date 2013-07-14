#!bin/bash
#使用return语句的函数

show_week()
{
	echo "You input is"
	echo $1

	case $1 in
		0)
			echo "Today is sunday"
			return 0;;
		1)
			echo "Today is monday"
			return 0;;
		2)
			echo "Today is Tuesday"
			return 0;;
		3)
			echo "Today is wednesday"
			return 0;;
		4)
			echo "Today is Thursday"
			return 0;;
		5)
			echo "Today si Friday"
			return 0;;
		6)
			echo "Today is saturday"
			return 0;;
		*)
			return 1;;
	esac

}

if show_week $1
then
	echo "What you input is right"
else
	echo "What you input is wrong!"
fi
exit 0
