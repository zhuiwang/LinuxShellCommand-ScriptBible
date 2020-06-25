#!/bin/bash
# Using numeric test evaluations
#

# -eq equal
# -ge great and equal
# -gt great
# -le less and equal
# -lt less
# -ne not equal



value1=10
value2=11

if [ $value1 -gt 5 ]; then
    echo "The test value $value1 is greater than 5"
fi

if [ $value1 -eq $value2 ]; then
    echo "The values are equal"
else
    echo "The values are different"
fi
