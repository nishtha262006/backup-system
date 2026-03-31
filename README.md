OPEN SOURCE AUDIT PROJECT 
NAME :NISHTHA MANISH WADASKAR 
REGISTRATION NUMBER 24BCE10608


# 📦 Automated Backup and Restore System (Bash)

## 📌 Overview
The Automated Backup and Restore System is a command-line based tool developed using Bash scripting. It allows users to create compressed backups of directories and restore them when required.

This project is designed to simplify data backup tasks and demonstrate the practical use of Linux commands. It is lightweight, efficient, and easy to use, making it suitable for beginners as well as basic system administration.

---

## 🎯 Objectives
- Automate the process of data backup
- Provide an easy and reliable restore mechanism
- Reduce manual effort in file management
- Learn and apply Bash scripting concepts
- Build a simple and efficient Linux utility

---

## ⚙️ Features
- Backup any directory specified by the user
- Automatic timestamp-based naming of backup files
- Compression using `.tar.gz` format
- Restore functionality for backup files
- Logging system to track backup operations
- Fully command-line based (no GUI required)

---

## 🛠️ Technologies Used
- **Language:** Bash Scripting
- **Platform:** Linux / Git Bash
- **Tools & Commands:**
  - tar → for compression and extraction
  - mkdir → for directory creation
  - date → for timestamp generation
  - echo → for logging and output

---

## 📂 Project Structure
backup-system/
│── backup.sh        # Script to create backups
│── restore.sh       # Script to restore backups
│── backups/         # Stores backup files
│── logs/            # Stores log files
│── README.md        # Project documentation

---

## 🚀 Installation & Setup

### Step 1: Clone Repository
git clone https://github.com/your-username/backup-system.git
cd backup-system

### Step 2: Make Scripts Executable
chmod +x backup.sh restore.sh

---

## ▶️ How to Run

### 🔹 Run Backup Script
./backup.sh

Enter directory in this format (Git Bash):
/c/Users/your-username/Desktop

---

### 🔹 Run Restore Script
./restore.sh

Follow the instructions:
- Select backup file
- Enter destination directory

---

## 📜 Script Descriptions

### 🔹 backup.sh (Backup Script)

This script is responsible for creating backups of a specified directory.

#### 🔧 Functionality:
- Prompts the user to enter the directory path
- Checks if the directory exists
- Generates a timestamp using the date command
- Creates a compressed archive using tar
- Stores the backup file in backups/ directory
- Logs the backup activity in logs/backup.log

#### 📌 Working Steps:
1. Creates required folders (backups, logs)
2. Takes input directory from user
3. Validates the directory path
4. Generates timestamp
5. Creates backup file (.tar.gz)
6. Displays success or error message

---

### 🔹 restore.sh (Restore Script)

This script is used to restore previously created backup files.

#### 🔧 Functionality:
- Displays list of available backup files
- Prompts the user to select a backup file
- Asks for destination directory
- Extracts backup file using tar
- Restores files to specified location

#### 📌 Working Steps:
1. Lists all backup files
2. Takes backup file name as input
3. Validates file existence
4. Takes destination directory input
5. Creates destination directory if not exists
6. Extracts files
7. Displays success or error message

---

### 🔹 logs/backup.log (Log File)

This file stores records of backup operations.

#### Purpose:
- Tracks backup start and completion time
- Records errors if backup fails
- Helps in debugging and monitoring

---

### 🔹 backups/ Directory

This directory stores all backup files created by the system.

#### Details:
- Files are stored in compressed `.tar.gz` format
- Each file includes a timestamp
- Prevents overwriting previous backups

---

## 📊 Example Output

### Backup
Enter the directory to backup:
/c/Users/user/Desktop
[INFO] Backup successful!

### Restore
Available backups:
backup_2026-03-28_20-45-10.tar.gz
Enter backup file:
Enter destination directory:
[INFO] Restore completed successfully!

---

## ⏰ Automation (Optional)

To schedule automatic backups:
crontab -e

Example:
0 2 * * * /path/to/backup.sh

This runs the backup daily at 2 AM.

---

## 🔒 Security Considerations
- Runs as normal user (no root required)
- Prevents system-level damage
- Limits access to user directories

---

## ⚠️ Limitations
- No graphical user interface
- Manual input required
- No encryption support
- No automatic updates

---

## 🚀 Future Enhancements
- Cloud backup integration (Google Drive / AWS)
- Data encryption for security
- Menu-driven interface
- Email notifications
- GUI-based application

---

## 🤝 Contribution
Contributions are welcome. You can:
- Fork the repository
- Add new features
- Fix bugs
- Improve documentation

---

## 📜 License
This project can be distributed under the MIT License.

---

## ⭐ Conclusion
This project demonstrates how Bash scripting and Linux tools can be used to automate real-world tasks like backup and restore. It highlights the flexibility and efficiency of open-source tools.
EOF
