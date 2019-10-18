#!/bin/bash
# using pattern matching

# 在上面的脚本中，我们使用了双等号（ == ）。双等号将右边的字符串（ r* ）视为一个模式，
# 并应用模式匹配规则。双方括号命令 $USER 环境变量进行匹配，看它是否以字母 w 开头。如果是
# 的话，比较通过，shell会执行 then 部分的命令。
if [[ $USER == w* ]]
then
    echo "Hello $USER"
else
    echo "Sorry, I do not know you"
fi

