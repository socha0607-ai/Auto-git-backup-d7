# Linux Automation & Git Reference Command Checklist

### 1. Automation & Scheduling
* `crontab -e` : Opens or edits the current user's cron tab scheduling file.
* `crontab -l` : Lists all active background scheduled cron jobs for the user.
* `systemctl status cron` : Checks the operational status of the cron daemon.

### 2. Advanced Git Workflow
* `git stash` : Temporarily shelves (stashes) uncommitted operational changes to clean the working directory.
* `git stash pop` : Removes the single most recently stashed state from the stash list and applies it back to the current working tree.
* `git stash list` : Inspects all safely shelved directory states currently saved in memory.
* `git add .` : Stages all new, modified, or deleted files for the upcoming commit.
* `git commit -m "message"` : Records changes to the local repository baseline history.
* `git push origin main` : Uploads local repository commits to the upstream GitHub remote main branch.
