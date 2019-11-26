#!/bin/bash
#设计一个Shell程序，在/userdata目录下建立50个目录，即user1～user50，#并设置每个目录的权限，其中其他用户的权限为：读；文件所有者的权限为 #读、写、执行；文件所有者所在组的权限为：读、执行。
#文件权限改变不成功
[ ! -d /test ] && mkdir test1
echo "创建完成"
base_dir=/home/xiaojun/test1/
echo "$base_dir"
cd_dir=$(cd test1)
if [ $? -eq 0 ];then
        for((i=1;i<=50;i++))
        do
                mkdir $base_dir$i && chmod u+rwx,g+rw-o,o+r $base_dir$i
        done
else
        echo "进入目录失败"
fi
echo "创建完成!!"

