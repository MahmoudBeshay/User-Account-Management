# 👤 User Account Management with Bash

This project contains two simple yet powerful Bash scripts for managing Linux user accounts in bulk using a CSV file.

## 📜 Description

- `add_user.sh`: Collects a username and full name from the user and appends it to a CSV file.
- `create_users.sh`: Reads from the CSV, generates a secure password for each user, creates a Linux user account, and stores the credentials in another CSV file.

---

## 📁 Project Structure

user-account-management/ ├── add_user.sh # Script to collect and store user info ├── create_users.sh # Script to create users from CSV ├── employee.csv # Input file with username and full name ├── info.csv # Output file with username, full name, and generated password └── README.md # Project documentation

yaml
Copy
Edit

---

## 🛠️ Requirements

- Linux OS
- Bash shell
- `openssl` installed
- Sudo privileges for account creation

---

## 🚀 How to Use

### Step 1: Make Scripts Executable

```bash
chmod +x add_user.sh create_users.sh
Step 2: Add User Info
Run this to add a user entry to employee.csv:

bash
Copy
Edit
./add_user.sh
You will be prompted to enter:

Username

Full name

Confirmation before saving

Step 3: Create Users
Run this to create all users listed in employee.csv:

bash
Copy
Edit
./create_users.sh
It will:

Generate a random secure password for each user

Create the user with the full name as a comment

Set the password to expire on first login

Save all credentials to info.csv

✅ Example
employee.csv

Copy
Edit
jdoe,John Doe
asmith,Alice Smith
info.csv

Copy
Edit
jdoe,John Doe,sX5vTrfP9oZw
asmith,Alice Smith,jK9vQpLs2wMn
🔐 Security Note
Passwords are generated using:

bash
Copy
Edit
openssl rand -base64 12
Always handle info.csv securely since it contains plaintext credentials.

🤝 Contribution
Feel free to fork the repo and submit pull requests to improve the scripts (e.g., input validation, error handling, encryption, logging, etc.).

📄 License
This project is licensed under the MIT License.

📬 Contact
Author: Mahmoud Ali Beshay
GitHub: @MahmoudBeshay

yaml
Copy
Edit

---

Let me know if you want help turning this into a GitHub Pages project or adding badges like `Made with Bash`, `MIT License`, etc.







