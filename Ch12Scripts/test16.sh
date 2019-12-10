#!/bin/bash
# Check is a file is writable.

item_name=$HOME/sentinel

echo
echo "The item being checked: $item_name"
echo

if [ -e $item_name ]; then
    echo "Yes, $item_name is a file."
    echo "But is it writable"
    echo

    if [ -w $item_name ]; then
        echo "Writing current time to $item_name"
        date +%H%M >> $item_name
    else
        echo "Unable to write to $item_name"
    fi

else
    echo "No, $item_name is not a file."
fi
