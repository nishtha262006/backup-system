#!/bin/bash

# ==============================
# Automated Backup Script
# ==============================

# Create required directories if not exist
mkdir -p backups
mkdir -p logs

LOG_FILE="logs/backup.log"

echo "=====================================" >> $LOG_FILE
echo "Backup started at $(date)" >> $LOG_FILE

# Ask user for source directory
echo "Enter the directory to backup:"
read SOURCE

# Check if directory exists
if [ ! -d "$SOURCE" ]; then
    echo "[ERROR] Directory does not exist!"
    echo "[ERROR] Invalid source directory" >> $LOG_FILE
    exit 1
fi

# Timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="backups/backup_$TIMESTAMP.tar.gz"

# Create backup
tar -czf $BACKUP_FILE $SOURCE 2>> $LOG_FILE

if [ $? -eq 0 ]; then
    echo "[INFO] Backup successful!"
    echo "[INFO] Backup saved as $BACKUP_FILE"
    echo "[SUCCESS] Backup completed at $(date)" >> $LOG_FILE
else
    echo "[ERROR] Backup failed!"
    echo "[ERROR] Backup failed at $(date)" >> $LOG_FILE
fi
