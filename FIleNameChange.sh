#!/bin/bash

# 批量修改文件名

# 参数说明
# $1: 源文件名前缀
# $2: 目标文件名前缀
# $3: 开始编号
# $4: 结束编号

source_prefix="$1"
target_prefix="$2"
start_num="$3"
end_num="$4"

# 检查参数是否为空
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ -z "$4" ]; then
    echo "Usage: bash rename_files.sh <source_prefix> <target_prefix> <start_num> <end_num>"
    exit 1
fi

# 检查源文件是否存在
if [ ! -e "$source_prefix" ]; then
    echo "Error: Source file not found."
    exit 1
fi

# 循环修改文件名
for ((i="$start_num"; i<="$end_num"; i++)); do
    source_file="${source_prefix}_${i}.txt"
    target_file="${target_prefix}_${i}.txt"

    # 检查源文件是否存在
    if [ ! -e "$source_file" ]; then
        echo "Error: Source file not found: $source_file"
        exit 1
    fi

    # 重命名文件
    mv "$source_file" "$target_file"
    echo "Renamed: $source_file -> $target_file"
done