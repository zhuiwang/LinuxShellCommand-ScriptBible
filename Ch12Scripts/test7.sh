#!/bin/bash
# testing  string equality

testuser=wangzhui

if [ $USER = $testuser ]; then
    echo "Welcome $testuser"
fi
