#!/bin/bash
# Check if either a directory or file exists
#

item_name=$HOME/sentinel
echo
echo "The item beign checked: $item_name"
echo

if [ -e $item_name ]; then
    echo "The item, $item_name, does exist."
    echo "But is it a file?"
    echo

    if [ -f $item_name ]; then
        echo "Yes, $item_name is a file."
    else # Item is not a file
        echo "No, $item_name is not a file."
    fi

else # Item does not exist

    echo "The item, $item_name, does not exist."
    echo "Nothing to update"
fi
