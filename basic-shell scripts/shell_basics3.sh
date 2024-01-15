#!/bin/bash
# Runtime inputs using the 'read' command.

echo -n Enter a number:
read number

if [[ $number =~ ^[0-9]+$ ]]; then

        echo The number you entered is $number
else
        echo Your input must contain only digits

fi
