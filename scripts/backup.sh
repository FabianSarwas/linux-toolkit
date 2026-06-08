#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "Welchen Ordner möchtest du sichern?"
read SOURCE

if [ ! -d "$SOURCE" ]; then
    echo "Fehler: Ordner existiert nicht."
    exit 1
fi

DATE=$(date '+%Y-%m-%d_%H%M')
BACKUP_FILE="backup/backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE"

echo "Backup erstellt: $BACKUP_FILE"
echo "$(date '+%Y-%m-%d %H:%M') Backup erstellt: $BACKUP_FILE" >> "$LOGFILE"
