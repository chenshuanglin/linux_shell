#!bin/bash
#演示数组赋值的方法
#chenshuanglin 2013/7/13

#[3] 指定city数组标号为10的元素的值
city=([2]=xian [3]=beijing [5]=fuzhou)

for i in ${city[@]}
do
	echo $i
done
