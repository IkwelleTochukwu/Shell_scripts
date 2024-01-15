#!/bin/bash
# Write a script that receives two parameters (two filenames) and outputs whether those files exist.

if [ $# -eq 2 ]; then
    if [ -f $1 ]; then
        echo $1 file exists in this directory.
    else
        echo $1 is not found.
    fi

    if [ -f $2 ]; then
        echo $2 file exits in this directory.
    else
        echo $2 is not found.
    fi

else
    echo Can only take two arguments filenames
    exit 1

fi
