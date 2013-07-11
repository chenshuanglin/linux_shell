#!bin/bash
#Program: Using for and loop
#chenshuanglin 2013/7/11

declare -i s
for(( i=1; i<=100; i=i+1 ))
do
	s=s+i;
done
echo "The 1+2+3+...+100=$s"
