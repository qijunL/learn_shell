#!/bin/bash
tt=$(awk '{print $(NF-1)}') /etc/redhat-release
if [ ${tt%%.*} -eq "7" ];then
	echo "配置centos7的源"
elif [ ${tt%%.*} -eq "6" ];then
	echo "配置centos6的源"
fi
