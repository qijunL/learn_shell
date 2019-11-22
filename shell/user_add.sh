#!/usr/bin/bash
read -p "please input user qz:" qz
if [[ ! $qz =~ ^[a-Z]+$ ]];then
	echo "you input is error!"
fi
read -p "please input user hz:" hz
if [[ ! $hz =~  ^[0-9]+$ ]];then
 	user=${qz}${hz}
	id $user &>/dev/null
	if [ $? -eq 0 ];then
		echo "user is exist $user"
	else
		useradd $user
		echo "success!"
	fi
fi
