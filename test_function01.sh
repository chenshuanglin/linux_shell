#!bin/bash
#用函数来显示当前目录中存在多少个文件和多少个目录
#chenshuanglin 2013/7/13

directory()
{
	let filenum=0
	let dirnum=0
	
	ls $1
	echo ""

	for file in $(ls)
	do
		if [ -d $file ]
		then
			let dirnum++
		else
			let filenum++
		fi
	done

	echo "The number of directories is $dirnum"
	echo "The number of files is $filenum"

}

directory
