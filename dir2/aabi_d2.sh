#!/bin/bash

echo "Enter the day of the week (e.g., Monday): "
read day

# Convert to lowercase to make matching easier
day_lower=$(echo "$day" | tr '[:upper:]' '[:lower:]')

case "$day_lower" in
  monday|tuesday|wednesday|thursday|friday)
    echo "$day is a Working Day."
    ;;
  saturday|sunday)
    echo "$day is a Holiday."
    ;;
  *)
    echo "Error: Invalid input. Please enter a full day name."
    ;;
esac
