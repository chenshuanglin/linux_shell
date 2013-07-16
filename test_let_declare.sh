#!bin/bash
#该例子是说明declare -i命令和let命令
#chenshuanglin 2013/7/16

year=1991
year1=$year+1
echo "year=$year1"

let year2=$year+1
echo "year=$year2"

declare -i year3
year3=$year+1
echo "year=$year3"
