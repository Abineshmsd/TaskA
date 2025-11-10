#!/bin/bash
echo "Enter a number: "
read num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
   echo "Error: Please enter a valid number."
   exit 1
fi

if [ $((num % 2)) -eq 0 ]; then
  echo "$num is Even"
else
  echo "$num is Odd"
fi
