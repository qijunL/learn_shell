#!/bin/bash
read -p "请输入你想修改的主机名：" HostName
echo "你将要修改主机名称为：$HostName"
read -p "你确定真的要修改以下内容吗[Y|N]" rc
if [ $rc == "Y"];then
	hostnamectl set -hostname $HostName
else
	exit
fi
