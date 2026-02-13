# Day 04- Linux Practice (Processes & Services)

Today I practiced basic linux command on Aws EC Ubuntu instance.
Focus on processes,services and logs

## Process Practice

### checking the running processes

Command:

ps aux | head
- checked currently running process with cpu  and memory usage.

### Live Process monitoring 
Command : top 
- real time running task with cpu and memory usage.

### Find specific process
Command : pgrep -a ssh 
 - find process with process name .

 ### Service Command 
  Command : systemctl status ssh
  - check the staus of service active or not.

### Listing active service  

 Command : systemctl list-units --type=service --state=running

 - Multiple system services are managed and running via systemd.

 ## Log Practice
  
  Command : journalctl -u ssh --no-pager -n 20

   -  view specific ssh related last 20 logs
   
## Summary
Practiced basic Linux troubleshooting commands on AWS Ubuntu.
This helped revise core Linux fundamentals used in real environments.


