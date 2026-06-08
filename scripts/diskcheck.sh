#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "===== Speicherprüfung ====="
df -h

echo
echo "===== Warnungen ab 80% ====="

df -h | awk 'NR>1 {print $5 " " $6}' | while read usage mountpoint
do
    percent=${usage%\%}
    if [ "$percent" -ge 80 ]; then
        echo "WARNUNG: $mountpoint ist zu $usage belegt."
    fi
done

echo "$(date '+%Y-%m-%d %H:%M') Speicherprüfung durchgeführt" >> "$LOGFILE"
