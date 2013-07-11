#!bin/bash
#Using if and then to select file or directory
#chenshuanglin 2013/7/11

if [ ! -e test.txt ]; then
	touch test.txt
	echo "Just make a file test.txt"
	exit 1
elif [ -e test.txt ] && [ -f test.txt ]; then
	rm test.txt
	mkdir test.txt
	echo "Remove file ==> test.txt"
	echo "and make directory test.txt"
	exit 1
elif [ -e test.txt ] && [ -d test.txt ]; then
	rm -rf test.txt
	echo "remove diretory ==> test.txt"
 	exit 1
else
	echo "Does here have anything?"
fi	
