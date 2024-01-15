#!/bin/bash
# Write a script that asks for a filename. Verify existence of the file, then verify that you 
# own the file, and whether it is writable. If not, then make it writable.

echo -n Enter the filename:
read filename

if [ -f $filename ]; then
   if [ "$(ls -l "$filename" | awk '{print $3}')" = $(whoami) ]; then
        if [ -w "$filename" ]; then
            echo You are the owner of this file and the file is writable.
        else
            chmod +w "$filename"
            echo $filename is now writeable.
        fi
    else
        echo You are not the owner of this file, and have only read-only access.
    fi
else
    echo $filename is not found.
fi
