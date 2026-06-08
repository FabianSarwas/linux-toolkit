#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "===== Benutzeranalyse ====="

while IFS=: read -r username password uid gid info home shell
do
    echo "Benutzername: $username"
    echo "UID: $uid"
    echo "Home-Verzeichnis: $home"
    echo "Login-Shell: $shell"
    echo "-----------------------------"
done < /etc/passwd

echo "Anzahl aller Benutzerkonten: $(wc -l < /etc/passwd)"

echo "$(date '+%Y-%m-%d %H:%M') Benutzerreport erzeugt" >> "$LOGFILE"
