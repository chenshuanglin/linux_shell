#!bin/bash
#用脚本说明间接变量引用的应用
#chenshuanglin 2013/7/16

#############################数据库表格数据#############################
S01_name="fu zi"
S01_dept=computer
S01_phone=029-5845444
S01_rank=5

S02_name="xiao qiang"
S02_dept=english
S02_phone=029-84487654
S02_rank=8


S03_name="chen lin"
S03_dept=math
S03_phone=029-24587455
S03_rank=7

#########################数据库表格数据###################################

#设置3级shell提示符变量，改变select命令的提示符
PS3='Pls. select the number of student:'

#用select建立选择菜单，供用户选择学号
select stunum in "S01" "S02" "S03"
do
	name=${stunum}_name
	dept=${stunum}_dept
	phone=${stunum}_phone
	rank=${stunum}_rank

	#通过间接变量引用得到学生的信息
	echo "BASIC INFORMATION OF NO.$Stunum STUDENT:"
	echo "name:${!name}"
	echo "dept:${!dept}"
	echo "phone:${!phone}"
	echo "rand:${!rank}"
	break
done


