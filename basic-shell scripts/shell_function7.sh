#!/bin/bash
# Write a script that asks for two numbers, and outputs the sum and product

echo -n "Enter a number1: "
read number1

echo -n "Enter number2: "
read number2

function evaluate {
    let sum="$number1+$number2"
    let prod="$number1*$number2"

    echo -e "Sum\t = $number1 + $number2 = $sum"
    echo -e "Product\t = $number1 * $number2 = $prod"
}

evaluate