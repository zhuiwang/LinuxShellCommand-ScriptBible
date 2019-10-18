#!/bin/bash
# trying to access script parameters inside a funcion

function badfunc1 {
    echo $[ $1 * $2 ]
}

if [ $# -eq 2 ]
then
    value=$(badfunc1)
    echo "The result is $value"
else
    echo "Usage: test5_bad a b"
fi

