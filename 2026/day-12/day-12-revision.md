# Day 12 – Revision
## Objective
Day 12 was a breather day focused on revising and consolidating everything learned
from Days 01 to 11.  
The goal was to strengthen fundamentals and ensure better retention before moving ahead.

---

## 1. Mindset & Learning Plan Review
I revisited my Day 01 learning plan and confirmed that my direction is correct.

- Focus on strong Linux fundamentals
- Hands-on practice with real commands
- Learning by troubleshooting instead of memorization

### Commands Practiced
- ps aux | head
- systemctl status ssh
- journalctl -u ssh -n 10
- Observation
 ps helps quickly identify running processes
 systemctl status shows service health instantly
 journalctl is the first place to check when services misbehave.

### File & Directory Management
- touch: create empty file
- ls -l list file with details
- mkdir: make directory
- cp file1 file2 : copy file content
- mv rename file
- rm delete file
### Disk & Memory
 - df -h : disk usage
 - du -sh: directory size
 - free -m memory usage

###  Search & Filtering
- grep word file;search word into file
- wc -w file: word count
- head file – first 10 lines
- tail file – last 10 lines
### File Permission
 - ls -l – check permissions
- chmod 755 file – change permission
- chown user:group file – change ownership
###  Cheat Sheet – Top 5 Commands I’ll Use First
ls -l – permissions & ownership check

systemctl status <service> – service health

journalctl -u <service> – log analysis

ps aux – process troubleshooting

chmod / chown – fixing access issues
## Key Takeaways
Revision is as important as learning
Linux basics repeat everywhere in DevOps
