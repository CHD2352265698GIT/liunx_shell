#!/bin/bash
##定义后缀变量
path=$1

##找到所有后缀为txt的文件，用for循环遍历
for file in `find ${path} -type f -name "*.txt"`
do
    echo "备份文件：$file"
    cp ${file} ${file}_cp
done
