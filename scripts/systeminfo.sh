#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "===== Systeminformationen ====="
echo "Hostname: $(hostname)"
echo "Benutzername: $(whoami)"
echo "Kernel-Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "IP-Adresse: $(hostname -I)"
echo "Arbeitsspeicher:"
free -h
echo "Festplattenbelegung:"
df -h

echo "$(date '+%Y-%m-%d %H:%M') Systeminformationen abgefragt" >> "$LOGFILE"
