#!/bin/bash
disk_use=$(df -h|grep "/$"|awk '{print $(NF-1)}')
if [ ${disk_use/\%/} -ge 80 ];then
	echo "is high...${disk_use}"
else
	echo "is running ${disk_use}"
fi
