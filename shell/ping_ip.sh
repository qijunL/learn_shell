#!/bin/bash
read -p "请输入ip地址：" ip
ping -c1 -w1 $ip &>/dev/null

if [ $? -eq 0 ];then
echo "ip: $ip ping通!"
else
echo "ping不通"
fi
