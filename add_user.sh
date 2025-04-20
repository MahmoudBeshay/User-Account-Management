#!/bin/bash
# This script adds user info to employee.csv

read -p "Enter the username: " username
read -p "Enter the full name: " fullname
info="$username,$fullname"

read -p "Confirm the information (y/n): " input
case "$input" in
  [yY]|[yY][eE][sS])
    echo "$info" >> employee.csv
    echo "The information has been added to employee.csv"
    ;;
  [nN]|[nN][oO])
    echo "Exiting the script"
    ;;
  *)
    echo "Invalid input. Exiting..."
    ;;
esac

