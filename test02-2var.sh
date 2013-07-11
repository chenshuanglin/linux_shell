#!/bin/bash
#这个脚本用于引用两个变量，顺便比较一下 "与" 的异同
#Date: 2012/7/11
#Written by 陈双麟

name="chen shuang lin"
myname1="my name is $name"
myname2='my name is $name'

echo $name
echo $myname1
echo $myname2
