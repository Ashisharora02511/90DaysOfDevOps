# Day 20 – Log Analyzer & Report Generator

---

## Script Created
log_analyzer.sh

![alt text](<ScreenShots/log-analyze script.png>)

---

## What Script Does
- Validates input log file
- Counts ERROR and Failed entries
- Detects CRITICAL events with line numbers
- Finds Top 5 error messages
- Generates timestamped report
- Archives processed logs

![alt text](ScreenShots/output.png)

---

## Commands Used
- grep
- awk
- sort
- uniq
- wc
- mv
- date

---



### What I Learned

- Real-world log parsing using Bash
- Combining grep + awk + sort pipelines
- Building automation-ready scripts

---