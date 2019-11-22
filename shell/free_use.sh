#!/usr/bin/bash
#jian kong neicun shiyongde baifenbi
free_use=$(free -m|awk '/^Mem/ {print $3/$2*100}')
echo ${free_use%.*}
if [ ${free_use%.*} -gt 40 ];then
	echo "momory has used out of 80%,curent is ${free_use%.*}%"
else
	echo "used....."
fi
