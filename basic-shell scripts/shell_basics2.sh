#!/bin/bash
# Write a script that counts the number of files ending in .txt in the current directory.

i=0
for file in *.txt;do
        if [ -f "$file" ]; then    # to check that the .txt found is a file
                ((i++))  # increment file number
        fi
done
if [ $i -gt 0 ]; then
    echo "There are $i file ending in .txt in the current directory"   # print if the number of .txt file is greater than 0
else
    echo "There are no .txt files in this directory"  # print in .txt file is 0
fi


