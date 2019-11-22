#!/bin/bash
while read line
do
	hosts[i++]=$line
done </etc/hosts
for i in ${!hosts[@]}
do
	echo hosts数组的索引是：$i host数组的值：${hosts[$i]}
done
