#!bin/bash
#判断参数的个数是否等于某个变量
#chenshuanglin 2013/7/13

MAXARGS=3
ERROR=68

test $# -ne $MAXARGS && echo "Usage:`basename $0` $MAXARGS arguments" && exit $ERROR

echo "Correct arguments arg passed to this script."
exit 0
