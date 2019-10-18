#!/bin/bash
# using until and while loops

var1=3

until [ $var1 -eq 0 ]
do
    echo "Outer loop: $var1"
    var2=1
    while [ $var2 -lt 5 ]
    do
        var3=$(echo "scale=4; $var1 / $var2" | bc)
        echo "    Inner loop: $ var1 / $var2 = $var3"
        var2=$[ $var2 + 1 ]
    done
    var1=$[ $var1 - 1 ]
done

IFS_OLD=$IFS
IFS=$'\n'

for entry in $(cat /etc/passwd)
do
    echo "Values in $entry - "
    # use ":" as seprater
    IFS=:
    for value in $entry
    do
        echo "    $value"
    done
 done
