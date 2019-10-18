#!/bin/bash

# mis-using string comparisions
#

val1=baseball
val2=hockey


if [ $val1 > $val2 ]
then
    echo "$val1 is greater than $val2"
else
    echo "$val1 is less than $val2"
fi

# wangzhui@movestation:/data/ShellCommand/chapter12$ ls
# floating_ponit_test.sh  numeric_test.sh  test2.sh  test4.sh      test5.sh  test7.sh  test9.sh
# hockey                  test1.sh         test3.sh  test5_pro.sh  test6.sh  test8.sh

val1=Testing
vla2=testing

if [ $val1 \> $val2 ]; then
    echo "$val1 is greater than $vla2"
else
    echo "$val1 is less than $val2"
fi
