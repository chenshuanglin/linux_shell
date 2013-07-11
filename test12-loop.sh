#!bin/bash
#program: Using until and loop
#chenshuanglin 2013/7/11

declare -i i
declare -i s
until [ "$i" = "101" ]
do
  	s=s+i
 	i=i+1
done
echo "The count is ==> $s"
