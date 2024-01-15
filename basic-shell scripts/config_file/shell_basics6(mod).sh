#!/bin/bash
# Write a script that asks for a filename. Verify existence of the file, then verify that you 
# own the file, and whether it is writable. If not, then make it writable.

source shell_basics6_config.sh   # To load the configuration file

echo -n "Enter the filename: "
read filename

# To use the function from the configuration file
check_file "$filename"