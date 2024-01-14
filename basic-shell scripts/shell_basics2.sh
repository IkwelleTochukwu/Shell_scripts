#!/bin/bash
# Write a script that counts the number of files ending in .txt in the current directory.

i=0
for file in *.txt;do
        if [ -f "$file" ]; then
                ((i++))
        fi
done

echo "There are $i file ending in .txt in the current directory"
