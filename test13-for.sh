#!bin/bash
#Using for and loop to read the account of this linux server!
#chenshuanglin 2013/7/11

#1.Using for i in
ast='last'
account="cut -d ":" -f1 /etc/passwd | sort"
echo "The following is your linux server's account"
$last
for i in $($account)
do
	echo $i
done
