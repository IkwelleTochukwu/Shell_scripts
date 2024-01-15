#! /bin/bash
# Write a script that receives four parameters, and outputs them in reverse order.

if [ "$#" -ne 4 ]; then
echo Usage: "$0 <param1> <param2> <param3> <param4>"
exit 1

fi

# Assign parameters to the variables
param1="$1"
param2="$2"
param3="$3"
param4="$4"

# Display the received parameter in reversed order
echo "Parameter 4: $param4"
echo "Parameter 3: $param3"
echo "Parameter 2: $param2"
echo "Parameter 1: $param1"


