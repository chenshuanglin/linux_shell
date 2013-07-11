#!bin/bash
#This program is used to "declare" variables
#Date: 2013/7/11
#Written by chenshuanglin

number1=2\*3+5*13-32+25
declare -i number2=2*3+5*13-32+25
echo "Your result is ==> $number1"
echo "Your result is ==> $number2"
