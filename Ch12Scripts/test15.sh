#!/bin/bash
# Testing if a file is empty
#

file_name=$HOME/sentinel

if [ -f $file_name ]; then
    # -s means file is empty
    if [ -s $file_name ]; then
        echo "The $file_name file exists and has date in it"
        echo "Will not remove this file."
    else
        echo "This $file_name file exist, but is empty."
        echo "Deleting empty file..."
        rm $file_name
    fi
else
    echo "File, $file_name, does not exist."
fi

