#!/bin/bash

# 检查是否提供了文件名作为参数
if [ "$#" -ne 1 ]; then
    echo "使用方法: $0 文件名"
    exit 1
fi

filename=$1

# 检查文件是否存在
if [ ! -f "$filename" ]; then
    echo "错误：文件 '$filename' 不存在。"
    exit 1
fi

# 执行一些命令，例如显示文件内容
echo "文件 '$filename' 的内容："
cat "$filename"

# 你可以在这里添加更多的命令来处理文件
# 例如，复制文件到另一个目录：
# cp "$filename" /path/to/destination

# 或者移动文件：
# mv "$filename" /path/to/destination