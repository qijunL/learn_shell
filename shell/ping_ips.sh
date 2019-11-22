#!/bin/bash
>ip.txt
for i in {1..254}
do
	{
	ip=192.168.1.$i
	ping -W1 -c1 $ip &>/dev/null
	if [ $? -eq 0 ];then
		echo "$ip is ok" >> ip.txt
	fi
	} &

done
	wait &&echo "Ping ip done"
	cat ip.txt
