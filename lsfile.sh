#!/bin/bash

echo "" > chapter13_testsh.md
for file in ./chapter13/*.sh
do
    echo "$file start" >> chapter13_testsh.md
    echo "\`\`\`" >> chapter13_testsh.md
    cat $file >> chapter13_testsh.md
    echo "\`\`\`" >> chapter13_testsh.md
done
