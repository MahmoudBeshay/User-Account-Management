User Account Management System
A Bash script-based solution for automating user account creation and management on Linux systems. This project simplifies the process of adding users with secure, randomly generated passwords and tracks user information in CSV files.

Features
Interactive User Input: Collects username and full name via command-line prompts.

CSV Data Storage: Stores user details in employee.csv for batch processing.

Secure Password Generation: Creates strong 12-character base64-encoded passwords using OpenSSL.

Automated User Creation: Bulk-creates user accounts from CSV data with forced password reset on first login.

Audit Trail: Generates info.csv containing usernames, full names, and initial passwords.

Prerequisites
Linux-based operating system

Bash shell

OpenSSL (for password generation)

Root/sudo privileges (required for user account creation)

Installation
Clone or download the scripts to your local machine.

Make the scripts executable:

bash
chmod +x user_management.sh create_users.sh
Usage
Step 1: Add User Information
Run the user management script to add new users:

bash
./user_management.sh
Follow prompts to enter:

Username

Full name

Confirmation (y/n)

This appends data to employee.csv.

Step 2: Create User Accounts
Process the CSV file to create user accounts:

bash
sudo ./create_users.sh
Note: Requires administrative privileges.

Output Files
employee.csv
Format: username,fullname
Stores basic user information for account creation.

info.csv
Format: username,fullname,password
Contains initial passwords for audit purposes. Secure this file!

Security Considerations
🔒 Passwords in info.csv are stored in plaintext - restrict access

🔄 Users are forced to change password on first login (chage -d 0)

🗑️ Remove info.csv after distributing passwords to users

Important Notes
The script includes a UID check that may prevent execution as root. If encountering permission issues:

Verify script is being run with appropriate privileges

Check line 2 in create_users.sh for proper UID validation

Tested on Ubuntu/Debian systems - may require adjustments for other distributions

Always review generated CSV files before running account creation
