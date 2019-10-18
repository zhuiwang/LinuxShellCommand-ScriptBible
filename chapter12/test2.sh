#!/bin/bash

# testing a bad command

if IamNotaCommand
then
    echo "It worked"
fi
echo "We are outside the if statement"

if pwd; then
    echo "It worked"
fi
echo "Your command worked"
