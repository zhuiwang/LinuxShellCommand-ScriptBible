#!/bin/bash
# testing multiple commands in the section
#

testuser=leander

if grep $testuser /etc/passwd; then
    echo "This is my first command"
    echo "This is mu second command"
    echo "I can even put in other commands besides echo;"
    ls -a /home/$testuser/.b*
fi
