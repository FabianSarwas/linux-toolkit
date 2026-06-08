#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "Vorhandene Backups:"
ls backup/*.tar.gz 2>/dev/null

echo "Welches Backup möchtest du wiederherstellen?"
read BACKUP_FILE

if [ ! -f "$BACKUP_FILE" ]; then
    echo "Fehler: Backup existiert nicht."
    exit 1
fi

echo "In welchen Zielordner soll entpackt werden?"
read TARGET

mkdir -p "$TARGET"

tar -xzf "$BACKUP_FILE" -C "$TARGET"

echo "Backup wurde nach $TARGET wiederhergestellt."
echo "$(date '+%Y-%m-%d %H:%M') Backup wiederhergestellt: $BACKUP_FILE" >> "$LOGFILE"

