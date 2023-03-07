#!/bin/bash

# Set the backup directory and the directory to backup
BACKUP_DIR=/path/to/backup/dir
SOURCE_DIR=/path/to/source/dir

# Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Generate a timestamp for the backup filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create the backup filename using the timestamp
BACKUP_FILENAME="backup_$TIMESTAMP.tar.gz"

# Create the backup archive
tar -czf "$BACKUP_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"

# Print the success message
echo "Backup of $SOURCE_DIR completed at $(date) to $BACKUP_DIR/$BACKUP_FILENAME"

