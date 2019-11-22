#!/bin/bash
db=$(mysql -uroot -pxxx -e "show databases;"|sed ld|grep -Ev ".*_schema|test|mysql")
for i in $db:
do
	mysqldump -uroot -pxxx -B $i > /backup/${i}_$(date +%F).sql
done
