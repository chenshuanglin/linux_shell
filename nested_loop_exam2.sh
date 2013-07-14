#!bin/bash
#输出一个8*8的棋盘
#chenshuanglin 2013/7/13

for(( i=1; i<=8; i++))
do
	for(( j=1; j<=8; j++ ))
	do
#		total=$(( $i + $j ))
#		tmp=$(( $total % 2 ))
#		if [ $tmp -eq 0 ];
	    let total=i+j
		let tmp=total%2
		if [ $tmp = 0 ];
		then
			echo -e -n "\033[47m "  #显示白格
		else
			echo -e -n "\033[40m "  #显示黑格
		fi
	done
	echo ""
done
