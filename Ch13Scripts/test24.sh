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
