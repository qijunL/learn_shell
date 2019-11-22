#!/bin/bash
cat <<-EOF
-------------------------
|1.Installed PHP 5.5
|2.Installed PHP 5.6
|3.Installed PHP 7.0
|q.Exit
-------------------------
EOF
read -p "请输入需要安装的php版本[1|2|3|q]" install
if [ $install -eq 1 ];then
	sleep 2
	echo "Install php5.5 Done....."
elif [ $install -eq 2 ];then
        sleep 2
        echo "Install php5.6 Done....."
elif [ $install -eq 3 ];then
        sleep 2
        echo "Install php7.0 Done....."
elif [ $install == "q" ];then
	exit
fi
