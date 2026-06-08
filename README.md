# 🐧 Linux Toolkit

## 📌 Projektbeschreibung

Das **Linux Toolkit** ist ein kleines Linux-Administrationstool, das im Rahmen eines Wochenprojekts erstellt wurde.

Das Projekt enthält mehrere Bash-Skripte, mit denen typische Administrationsaufgaben unter Linux durchgeführt werden können. Dazu gehören Systeminformationen, Speicherprüfung, Benutzeranalyse, Backups und Wiederherstellung von Backups.

Das gesamte Projekt wird mit **Git** versioniert und dokumentiert.

---

## 🎯 Ziel des Projekts

Ziel dieses Projekts ist es, den Umgang mit folgenden Themen zu üben:

- Arbeiten mit dem Linux-Terminal
- Erstellen und Ausführen von Bash-Skripten
- Arbeiten mit Dateien und Verzeichnissen
- Nutzung von Git und GitHub
- Dokumentation eines Projekts
- Protokollierung von Aktionen in Logdateien

---

## 📁 Verzeichnisstruktur

```text
linux-toolkit/
├── scripts/
│   ├── systeminfo.sh
│   ├── diskcheck.sh
│   ├── userreport.sh
│   ├── backup.sh
│   ├── restore.sh
│   └── toolkit.sh
├── logs/
│   └── toolkit.log
├── docs/
│   ├── logging.txt
│   └── projektinfo.txt
├── backup/
│   └── backup_YYYY-MM-DD_HHMM.tar.gz
└── README.md
```

---

## 🛠️ Installation

Repository von GitHub klonen:

```bash
git clone https://github.com/FabianSarwas/linux-toolkit.git
```

In den Projektordner wechseln:

```bash
cd linux-toolkit
```

Skripte ausführbar machen:

```bash
chmod +x scripts/*.sh
```

---

## 🚀 Nutzung

Das Hauptmenü wird mit folgendem Befehl gestartet:

```bash
./scripts/toolkit.sh
```

Danach erscheint dieses Menü:

```text
===== Linux Toolkit =====
1 - Systeminformationen
2 - Speicherprüfung
3 - Benutzeranalyse
4 - Backup erstellen
5 - Backup wiederherstellen
0 - Beenden
```

Die gewünschte Funktion wird durch Eingabe der entsprechenden Zahl gestartet.

---

## 📜 Skripte im Überblick

## 1️⃣ Systeminformationen

Datei:

```bash
scripts/systeminfo.sh
```

Dieses Skript zeigt wichtige Systeminformationen an.

Ausgegeben werden:

- Hostname
- Benutzername
- Kernel-Version
- Uptime
- IP-Adresse
- Arbeitsspeicher
- Festplattenbelegung

Starten:

```bash
./scripts/systeminfo.sh
```

---

## 2️⃣ Speicherprüfung

Datei:

```bash
scripts/diskcheck.sh
```

Dieses Skript zeigt die Speicherbelegung aller gemounteten Dateisysteme an.

Zusätzlich gibt es eine Warnung aus, wenn ein Dateisystem zu mindestens 80 Prozent belegt ist.

Beispiel:

```text
WARNUNG: / ist zu 84% belegt.
```

Starten:

```bash
./scripts/diskcheck.sh
```

---

## 3️⃣ Benutzeranalyse

Datei:

```bash
scripts/userreport.sh
```

Dieses Skript liest Informationen aus der Datei `/etc/passwd` aus.

Ausgegeben werden:

- Benutzername
- UID
- Home-Verzeichnis
- Login-Shell

Zusätzlich wird die Anzahl aller Benutzerkonten angezeigt.

Starten:

```bash
./scripts/userreport.sh
```

---

## 4️⃣ Backup erstellen

Datei:

```bash
scripts/backup.sh
```

Dieses Skript erstellt ein Backup eines ausgewählten Ordners.

Das Backup wird als `.tar.gz`-Archiv im Ordner `backup/` gespeichert.

Der Dateiname enthält Datum und Uhrzeit.

Beispiel:

```text
backup_2026-06-08_1430.tar.gz
```

Starten:

```bash
./scripts/backup.sh
```

---

## 5️⃣ Backup wiederherstellen

Datei:

```bash
scripts/restore.sh
```

Dieses Skript stellt ein vorhandenes Backup wieder her.

Dabei wird ein vorhandenes `.tar.gz`-Archiv ausgewählt und in einen Zielordner entpackt.

Starten:

```bash
./scripts/restore.sh
```

---

## 6️⃣ Hauptmenü

Datei:
```bash
scripts/toolkit.sh
```

Das Hauptmenü verbindet alle Skripte miteinander.  
Über eine Zahlenauswahl können die einzelnen Funktionen gestartet werden.

Starten:

```bash

./scripts/toolkit.sh
```

---

## 🧾 Logging


Alle Skripte schreiben Ereignisse in die zentrale Logdatei:

```bash
logs/toolkit.log
```

Beispiele für Logeinträge:

```text
2026-06-08 10:30 Backup erstellt
2026-06-08 10:45 Systeminformationen abgefragt
2026-06-08 11:10 Benutzerreport erzeugt
```

Dadurch kann nachvollzogen werden, wann welche Funktion ausgeführt wurde.

---

## 🧰 Verwendete Linux-Befehle

In diesem Projekt wurden unter anderem folgende Linux-Befehle verwendet:

| Befehl | Bedeutung |
|---|---|
| `mkdir` | Erstellt Verzeichnisse |
| `touch` | Erstellt leere Dateien |
| `nano` | Öffnet den Texteditor Nano |
| `chmod` | Ändert Dateirechte |
| `hostname` | Zeigt den Hostnamen an |
| `whoami` | Zeigt den aktuellen Benutzer an |
| `uname` | Zeigt Kernel-Informationen an |
| `uptime` | Zeigt die Laufzeit des Systems an |
| `hostname -I` | Zeigt die IP-Adresse an |
| `free -h` | Zeigt den Arbeitsspeicher an |
| `df -h` | Zeigt die Festplattenbelegung an |
| `awk` | Verarbeitet Textausgaben |
| `tar` | Erstellt oder entpackt Archive |
| `date` | Gibt Datum und Uhrzeit aus |
| `echo` | Gibt Text aus |
| `read` | Liest Benutzereingaben ein |
| `git` | Versioniert das Projekt |

---

## 🌿 Git-Versionierung

Das Projekt wurde mit Git verwaltet.

Verwendete Git-Befehle:

```bash
git init
git add .
git commit -m "Commit message"
git status
git log --oneline
git remote add origin https://github.com/FabianSarwas/linux-toolkit.git
git push -u origin main
```

Das Projekt enthält mindestens 10 sinnvolle Commits.

---

## ✅ Projektstatus

Das Projekt enthält:

- vollständige Projektstruktur
- ausführbare Bash-Skripte
- Hauptmenü
- Logdatei
- Backup-Funktion
- Restore-Funktion
- README-Dokumentation
- Git-Historie mit mehreren Commits
- Upload auf GitHub

---

## 👤 Autor

**Fabian Sarwas**

GitHub Repository:

```text
https://github.com/FabianSarwas/linux-toolkit
```
