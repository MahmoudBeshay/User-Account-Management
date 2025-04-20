#!/bin/bash
# This script reads employee.csv and creates Linux user accounts

csv_file="employee.csv"
output_file="info.csv"

if [ "$UID" -eq 0 ]; then
  echo "You are not allowed to run this script as root"
  exit 1
fi

if [ ! -f "$csv_file" ]; then
  echo "The file $csv_file does not exist"
  exit 1
fi

> "$output_file"  # clear or create output file

while IFS=, read -r username fullname
do
  password=$(openssl rand -base64 12)
  useradd -m -c "$fullname" "$username"
  echo "$username:$password" | chpasswd
  chage -d 0 "$username"
  echo "User $username has been created with password $password"
  echo "$username,$fullname,$password" >> "$output_file"
done < "$csv_file"

echo "All users have been created and passwords saved to $output_file"

