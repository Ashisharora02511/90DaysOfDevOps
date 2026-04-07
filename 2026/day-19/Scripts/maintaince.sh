set -euo pipefail

LOGFILE="/var/log/maintenance.log"

echo "$(date) Starting maintenance..." >> "$LOGFILE"

./log_rotate.sh /home/ubuntu/test-logs >> "$LOGFILE" 2>&1
./backup.sh data backup >> "$LOGFILE" 2>&1

echo "$(date) Maintenance completed." >> "$LOGFILE"
### 🛠️ Maintenance Script – maintenance.sh

- Acts as a wrapper script=
- Calls log rotation and backup together
- Designed for automated maintenance workflows
- Can log output to a maintenance log file


---

###  Cron Jobs Configured

0 2 * * * /home/log_rotate.sh /home//testlogs
0 3 * * 0 /home/backup.sh /source /backup

###  What I Learned

- Input validation is critical in automation scripts
- Using full absolute paths is required in cron jobs
- System health monitoring can be automated with shell scripts
- Logging and scheduled jobs are core DevOps practicesWriting modular scripts improves maintainability
