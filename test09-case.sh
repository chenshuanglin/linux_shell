#!bin/bash
#program: Using case mode
#chenshuanglin 2013/7/11
#content: I will use the program to study the case mode
#1.print the program
echo "This program will print your selection!"
read choice
case $choice in
	one)
		echo "Your choice is one"
		;;
	two)
		echo "Your choice is two"
		;;
	three)
		echo "Your choice is three"
		;;
	*)
		echo "Usage{one|two|three}"
		exit 1
esac
