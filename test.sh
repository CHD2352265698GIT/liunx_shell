#!/bin/bash
test=123

test="$test"123
test=${test}456
test=${test}"ert"

value=67899
echo "hello world"
echo $test
echo $(date)
echo $(ls)
echo $value
echo "shell脚本本身名字：$0"
echo "传参1：$1"
echo "传参2：$2"


