#!/bin/bash
# testing compound comparsions

if [ -d $HOME ] && [ -w $HOME/testing ]; then
    echo "The file exists and you can write to it"
else
    echo "I cannot write to the file"
fi

