#!/bin/bash

# testing the file dates

# -nt file is newer than
if [ test19.sh -nt test18.sh ]; then
    echo "The test19 file is newer than test18"
else
    echo "The test19 file is older than test18"
fi

# -ot file is older than
if [ test17.sh -ot test19.sh ]; then
    echo "The test17 file is older than the test19file"
fi
