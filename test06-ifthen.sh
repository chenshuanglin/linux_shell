#!bin/bash
#This program is used to study if then
#Date: 2013/7/11
#Written by chenshuanglin

echo "Press enter y to continue"
read yn
if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
	echo "Script is running..."
else
	echo "STOP"
fi
