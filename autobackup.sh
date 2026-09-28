#!/bin/bash

# TARGET_DIR: Change this path to the directory you want to monitor and back up
TARGET_DIR="/home/ubuntu/Day_7"

# Navigate into the target directory
cd "$TARGET_DIR" || { echo "Directory not found!"; exit 1; }

echo "=== Backup Process Started: $(date) ==="

# Check if there are any uncommitted changes to protect your active work
CHANGES_DETECTED=$(git status --porcelain)

HAS_STASH=false
if [ -not -z "$CHANGES_DETECTED" ]; then
    echo "Uncommitted changes detected. Safely stashing active work..."
    git stash
    HAS_STASH=true
fi

# Stage all files, commit with a timestamp, and push upstream
git add .
git commit -m "Auto-backup baseline captured on: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

# Restore your working environment if it was stashed
if [ "$HAS_STASH" = true ]; then
    echo "Restoring your active working directory changes..."
    git stash pop
fi

echo "=== Backup Process Completed Successfully ==="
