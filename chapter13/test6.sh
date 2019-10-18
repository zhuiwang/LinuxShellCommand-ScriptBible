#!/bin/bash
# iterate through all the files in a directory


for file in /home/wangzhui/*
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is file"
    fi
done
