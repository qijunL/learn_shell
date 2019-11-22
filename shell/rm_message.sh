#!/bin/bash
if[ $UID -eq 0] && [ $USER == "root"];then
	if[ -f /var/log/messages ];then
		tail -100 /var/log/messages > /var/log/messages.bak
		cat /var/log/messages.bak > /var/log/messages
	else
		echo "file /var/log/message is not exist"	
	fi
fi
