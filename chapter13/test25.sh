#!/bin/bash

IFS=:
for folder in $PATH
do
    echo "$folder"
    for file in $folder/*
    do
        if [ -x $folder ]
        then
            echo "    $file"
        fi
    done
done
