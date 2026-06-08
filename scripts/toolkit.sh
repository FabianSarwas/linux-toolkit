#!/bin/bash

while true
do
    echo "===== Linux Toolkit ====="
    echo "1 - Systeminformationen"
    echo "2 - Speicherprüfung"
    echo "3 - Benutzeranalyse"
    echo "4 - Backup erstellen"
    echo "5 - Backup wiederherstellen"
    echo "0 - Beenden"
    echo "Auswahl:"
    read choice

    case $choice in
        1)
            ./scripts/systeminfo.sh
            ;;
        2)
            ./scripts/diskcheck.sh
            ;;
        3)
            ./scripts/userreport.sh
            ;;
        4)
            ./scripts/backup.sh
            ;;
        5)
            ./scripts/restore.sh
            ;;
        0)
            echo "Programm beendet."
            exit 0
            ;;
        *)
            echo "Ungültige Auswahl."
            ;;
    esac

    echo
done
