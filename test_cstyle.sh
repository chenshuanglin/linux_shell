#!bin/bash
#该脚本利用双圆括号方法实现C语言风格的变量操作

(( a = 1991 ))   #等号两端各有一个空格
echo "The initial value of a is :$a"

#下面的自加、自减是shell算术运算符中未曾定义过的，C 语言有相关操作
((a++))
echo "After a++,the value of a is :$a"

((++a))
echo "After ++a,the value of a is :$a"

((a--))
echo "After a--,the value of a is :$a"

((--a))
echo "After --a,the value of a is :$a"
