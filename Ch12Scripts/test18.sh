#!/bin/bash
# check file ownership

if [ -O /etc/passwd ]; then
    echo "You are the owner of the /etc/passwd file"
else
    echo "Sorry, you are not owner of the /etc/passwd file"
fi

