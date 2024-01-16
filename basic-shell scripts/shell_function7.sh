#!/bin/bash
# Write a script that asks for two numbers, and outputs the sum and product

echo -n "Enter a number1: "
read number1

echo -n "Enter number2: "
read number2

# To check if the input is numeric
if ! [[ $number1 =~ ^[0-9]+$ ]] || ! [[ $number2 =~ ^[0-9]+$ ]]; then
    echo "Enter a valid number!"
    exit 1
fi

# funtion to run the evaluation
function evaluate {
    let sum="$number1+$number2"
    let prod="$number1*$number2"

    echo -e "Sum\t = $number1 + $number2 = $sum"
    echo -e "Product\t = $number1 * $number2 = $prod"
}

evaluate