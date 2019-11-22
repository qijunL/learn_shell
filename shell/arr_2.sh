#!/bin/bash
while read line
do
	type= $(echo $line|awk '{print $1}')
	echo $type
done<set.txt
