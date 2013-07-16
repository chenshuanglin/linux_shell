#!bin/bash
#用bc运算器计算圆面积
#命令格式如下：variable=`echo "options; expression" | bc`
#其中variable是变量名 echo命令后options部分一般用于设置scale变量
#expression是数学表达式，echo 的结果通过管道符传输给bc命令

var1=20
var2=3.1415926
var3=`echo "scale=5;$var1 ^ 2 " | bc` #计算半径的平方
var4=`echo "scale=6;$var2 * $var3" | bc` #计算圆面积
echo "The area of this circle is : $var4"
