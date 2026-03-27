#!/bin/bash

# ==============================
# Restore Script
# ==============================

echo "Available backups:"
ls backups/

echo "Enter backup file name to restore:"
read FILE

# Check if file exists
if [ ! -f "backups/$FILE" ]; then
    echo "[ERROR] File not found!"
    exit 1
fi

echo "Enter destination directory:"
read DEST

# Create destination if not exist
mkdir -p $DEST

# Extract backup
tar -xzf backups/$FILE -C $DEST

if [ $? -eq 0 ]; then
    echo "[INFO] Restore completed successfully!"
else
    echo "[ERROR] Restore failed!"
fi
