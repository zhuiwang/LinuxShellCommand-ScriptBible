#!/bin/bash
# testing the exit status of a function

func1() {
    echo "Trying to display a non-existent file"
    ls -artl badfile
    echo "This was a test of a bad command"
}

echo "testing the function"
func1
echo "The exit status is: $?"
