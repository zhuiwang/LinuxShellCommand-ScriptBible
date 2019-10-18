#!/bin/bash
# reading values form a file

file="states"

for state in $(cat $file)
do
    echo "Visit beautiful $state"
done

IFS_OLD=$IFS
echo $IFS
echo $IFS_OLD

IFS=$'\n'
for state in $(cat $file)
do
    echo "Visit beautiful $state"
done

# re value IFS
IFS=$IFS_OLD
for state in $(cat $file)
do
    echo "Visit beautiful $state"
done
