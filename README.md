# Auto Git Backup Bot (Day 7)

An automated Linux utility that acts as a background backup bot. It leverages a Bash script combined with a Linux Cron job to periodically snapshot, track, and push modifications from a specific directory to a remote GitHub repository.

## Project Structure
├── auto-backup.sh       # The primary automation Bash script
├── commands.md          # Comprehensive command reference checklist
└── README.md            # Project documentation and architecture

## Features
* **Stash Protection**: Detects uncommitted changes, stashes them securely before execution, and pops them back afterward to prevent conflict with ongoing work.
* **Automated Stage & Commit**: Tracks file creations and mutations automatically with time-stamped logs.
* **Cron Integration**: Executes seamlessly in the background without user intervention.

## Setup & Local Execution
1. Ensure the script is executable:
   ```bash
   chmod +x auto-backup.sh
   ```
2. Test run manually:
   ```bash
   ./auto-backup.sh
   ```
