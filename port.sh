#!bin/bash
#program: Using to study the [if ... then ... fi] program
#Written by: chenshuanglin
#Date: 2013/7/11
#content: I will using this program to show your services
#1.print the program's work in your screen
echo "Now ,the services of your linux system will be detect!"
echo "The www,ftp,ssh,and sendmail + pop3 will be detect"
echo " "
#2.www
www='netstat -an | grep LISTEN | grep :80'
if [ "$www" != "" ]; then
   echo "www is running"
else
	echo "www is NOT running"
fi
#3.ftp
ftp='netstat -an | grep LISTEN | grep :21'
if [ "%ftp" != "" ]; then
	echo "FTP is running"
else
	echo "FTP is NOT running"
fi
#4.ssh
ssh='netshat -an | grep LISTEN | grep :22'
if [ "$ssh" != "" ]; then
	echo "SSH is running"
else
	echo "SSH is NOT running"
fi
#5. sendMail + pop3
smtp='netstat -an | grep LISTEN | grep :25'
pop3='netstat -an | grep LISTEN | grep :110'
if [ "$smtp" != "" ] && [ "$pop3" != "" ]; then
   echo "SendMail have is OK!"
elif [ "$smtp" != "" ] && [ "$pop3" = "" ]; then
	echo "sendmail have some problem of your pop3"
elif [ "$smtp" = "" ] && [ "$pop3" != "" ]; then
	echo "sendmail have some problem of your smtp"
else
	echo "sendmail is NOT running"
fi
