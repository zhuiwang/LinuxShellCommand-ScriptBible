#!/bin/bash
# This script displays the date and who's logged on
date
who
echo This is a test
echo "Let's see if this'll work"

echo "This is a test to see if you're paying attention"
echo 'Rich says "scripting is easy".'

echo -n "The time and date are: "
date


echo "User info for userid: $USER"
echo UID: $UID
echo HOME: $HOME

echo "The cost of the item is \$5"

days=10
guest="Katie"
echo "$guest checked in $days days ago"

days=5
guest="Jessica"
echo "$guest checked in $days days ago"

print_date=`date`
echo $print_date

print_date_new=$(date)
echo $print_date_new

echo "The date and time are : " $print_date


today=$(date +%y%m%d)
echo $today

ls /usr/bin -al > log.$today

expr 1 + 5
expr 1 \* 5


echo "Use [] "

var1=10
var2=20
var3=$(expr $var2 / $var1)
echo The result is $var3

var1=$[1 + 5]
echo $var1

var2=$[$var1 * 2]
echo $var2


var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4
