#!/bin/bash


echo "Enter your marks (0-100): "
read marks

# Check if input is a number
if ! [[ "$marks" =~ ^[0-9]+$ ]]; then
   echo "Error: Please enter a valid number."
   exit 1
fi

if [ "$marks" -gt 90 ] && [ "$marks" -le 100 ]; then
  echo "Distinction"
elif [ "$marks" -ge 75 ] && [ "$marks" -le 90 ]; then
  echo "First class"
elif [ "$marks" -ge 60 ] && [ "$marks" -lt 75 ]; then
  echo "Second class"
elif [ "$marks" -ge 35 ] && [ "$marks" -lt 60 ]; then
  echo "Pass"
elif [ "$marks" -lt 35 ] && [ "$marks" -ge 0 ]; then
  echo "Fail"
else
  echo "Invalid marks. Please enter a number between 0 and 100."
fi
