
./chapter13/badtest1.sh start
```
#!/bin/bash
# another example of how not to use the for command

for test in I don't know if this'll work
do
    echo "word: $test"
done

for test in I don\'t know if this\'ll work
do
    echo "world: $test"
done

```
./chapter13/badtest2.sh start
```
#!/bin/bash
# another example of how not to use the for command

for test in Nevada New Hampshire New Mexico New York North Carolina
do
    echo "Now going to $test"
done

for test in Nevada "New Hampshire" "New Mexico" "New York" "North Carolina"
do
    echo "Now going to $test"
done
```
./chapter13/test10.sh start
```
#!/bin/bash
# wile command test

var1=10

while [ $var1 -gt 0 ]
do
    echo $var1
    var1=$[ $var1 - 1 ]
done
```
./chapter13/test11.sh start
```
#!/bin/bash
# testing a multicommand while loop

var1=10
while echo $var1
    [ $var1 -ge 0 ]
do
    echo "This is inside the loop"
    var1=$[ $var1 -1 ]
done

```
./chapter13/test12.sh start
```
#!/bin/bash
# using the until command

var1=100
until [ $var1 -eq 0 ]
do
    echo $var1
    var1=$[ $var1 - 25 ]
done
```
./chapter13/test14.sh start
```
#!/bin/bash
# nesting for loops

for (( a=1; a <= 3; a++ ))
do
    echo "Starting loop $a:"
    for (( b=1; b <= 3; b++ ))
    do
        echo "    Inside loop: $b"
    done
done

```
./chapter13/test15.sh start
```
#!/bin/bash
# placing a for loop inside a while loop

var1=5
while [ $var1 -ge 0 ]
do
    echo "Outer loop $var1"
    for (( var2=1; $var2 < 3; var2++ ))
    do
        var3=$[ $var1 * $var2 ]
        echo "    Inner loop: $var1 * $var2 = $var3"
    done
    var1=$[ $var1 - 1 ]
done
```
./chapter13/test16.sh start
```
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
```
./chapter13/test17.sh start
```
#!/bin/bash
# breaking out of a for loop

for var1 in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration number: $var1"
done
echo "The for loop is completed"
```
./chapter13/test18.sh start
```
#!/bin/bash
# breaking out of a while loop

var1=1

while [ $var1 -lt 10 ]
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration: $var1"
    var1=$[ $var1 + 1 ]
done
```
./chapter13/test19.sh start
```
#!/bin/bash
# breaking out of an inner loop

for (( a=1; a < 10; a++ ))
do
    echo "Outer loop: $a"
    for (( b=1; b < 100; b++ ))
    do
        if [ $b -eq 90 ]
        then
            break
        fi
        echo "    Inner loop $b"
    done
done

```
./chapter13/test1.sh start
```
#!/bin/bash

for test in Alabama Alska Ariona Arkansas California Colorado
do
    echo The next sate is $test
done
```
./chapter13/test20.sh start
```
#!/bin/bash
# breaking out of outer loop

for (( a=1; a < 4; a++ ))
do
    echo "Outer loop: $a"
    for (( b=1; b < 100; b++ ))
    do
        if [ $b -gt 4 ]
        then
            break 2
        fi
        echo "   Inner loop: $b"
    done
done
```
./chapter13/test21.sh start
```
#!/bin/bash
# using the continue conmmand

for (( var1 = 1; var1 < 15; var1++ ))
do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Iteration number: $var1"
done
```
./chapter13/test22.sh start
```
#!/bin/bash
# continuing an outer loop

for (( a = 1; a <= 5; a++ ))
do
    echo "Iteration $a:"
    for (( b = 1; b < 3; b++ ))
    do
        if [ $a -gt 2 ] && [ $a -lt 4 ]
        then
            continue 2
        fi
        var3=$[ $a * $b ]
        echo "    The result of $a * $b is $var3"
    done
done
```
./chapter13/test23.sh start
```
#!/bin/bash
# redirecting the for output to a file

for (( a = 1; a < 10; a++ ))
do
    echo "The number is $a"
done > test23.txt
echo "The command is finished."
```
./chapter13/test24.sh start
```
#!/bin/bash
# piping a loop to another command

for state in "North Dakota" Connectticut Illionis Alabama Tennessee
do
    echo "$state is the next palce to go"
done | sort
for state in "North Dakota" Connectticut Illionis Alabama Tennessee
do
    echo "$state is the next palce to go"
done
echo "This completes our travels"
```
./chapter13/test25.sh start
```
#!/bin/bash

IFS=:
for folder in $PATH
do
    echo "$folder"
    for file in $folder/*
    do
        if [ -x $folder ]
        then
            echo "    $file"
        fi
    done
done
```
./chapter13/test26.sh start
```
#!/bin/bash

input="user.csv"
while IFS=',' read -r userid name
do
    echo "adding $userid"
    useradd -c "$name" -m $userid
done < "$input"

```
./chapter13/test4.sh start
```
#!/bin/bash
# using a variable to hold the list

list="Alabama Alaska Arizona Arakansas Colorado"
list=$list" Connecticut"

for state in $list
do
    echo "Have you ever visited $state?"
done
```
./chapter13/test5.sh start
```
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
```
./chapter13/test6.sh start
```
#!/bin/bash
# iterate through all the files in a directory


for file in /home/wangzhui/*
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is file"
    fi
done
```
./chapter13/test7.sh start
```
#!/bin/bash
# iterating through multiple directories

for file in /home/wangzhui/.* /home/wangzhui/*.conf
do
    if [[ -d "$file" ]]; then
        echo "$file is a directory"
    elif [[ -f "$file" ]]; then
        echo "$file is a file"
    else
        echo "$file doesn't exist"
    fi
done
```
./chapter13/test8.sh start
```
#!/bin/bash
# testing the c-style for loop

for (( i=1; i <= 10; i++ ))
do
    echo "The next number is $i"
done
```
./chapter13/test9.sh start
```
#!/bin/bash
# multiple variables

for (( a=1, b=10; a <= 10; a++, b-- ))
do
    echo "$a - $b"
done
```
