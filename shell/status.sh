#!/usr/bin/bash
if [ $# -ge 1  ];then
	systemctl status "$1" > /dev/null
	if [ $? -eq 0 ];then
		echo "$1 is running"
	else
		echo "$1 is not running"
	fi
else
	echo "this is shell"
	echo "sh $0"

fi
