#!/bin/bash
#1:判断服务是否启动
ssh_status=$(systemctl status sshed|awk '/^.*Active/ {print $2}')
if [ "$ssh_status" == "active" ];then
	sleep 1
	echo "sshd服务监测是Active状态是 $ssh_status"
else
	sleep 1
	echo "sshd的状态是: $ssh_status"
	
fi
#2判断端口是否存在
netstat -lntp|grep "sshd" &>/dev/null
if [ $? -eq 0 ];then
	sleep 1
	echo "ssh服务器端口存活...."
else
	sleep 1
	echo "sshd服务器端口不存在"
fi
#3判断进程是否存在
ps aux|grep sshd|grep -v grep|grep -v "pts"
if [ $? -eq 0 ];then
	sleep 1
	echo "sshd 进程服务存在"
else
	echo "sshd服务进程不存在"
fi
