#!bin/bash
#This program is test 'select' use
#chenshuanglin 2013/7/16
echo "What is your favorite color?"
select color in "red" "blue" "green" "white" "black"
do
	break
done

#show the user select
echo "You hava select $color"
