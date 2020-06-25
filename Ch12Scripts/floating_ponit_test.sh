#!/bin/bash

# Using floating point numbers in test evaluations
#

value1=5.555

echo "The test value is $value1"

if [ $value1 -gt 5 ]; then
    echo "The test value $value1 is greater than 5"
fi

#The test value is 5.555
# ./floating_ponit_test.sh: line 10: [: 5.555: integer expression expected
