#!/bin/bash
# count number of files in your PATH
mypath=$(echo $PATH | sed 's/:/ /g')
count=0
for dir in $mypath
do
    check=$(ls $dir)
    for item in $check
    do
        count=$[ $count + 1 ]
    done
    echo "$dir - $count"
    count=0
done
