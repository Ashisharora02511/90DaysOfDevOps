# Day 03 Linux Command CheatSheet

This is cheatsheet contains commonly used linux commands

for daily troubleshooting and operations.

## Process Management
-  We can perform process management by using ps command.
- ps: if we are not passing any argument,then it show processes related to current session.
- ps -ef : its show all process with full listing
- ps -f -u :filter out the process based on user.
- top: We can use top command to see processes with consumed resources like memory and cpu utilization.
- kill -9 PID : to kill a procees with process id

## File & Directory Management

- cat > file.txt : create a file same time edit if exists then override content
- cat file.txt: view the content of file.
- head : view top few lines of content
- cp : to copie the content of file
- mkdir : to make a directory
- mv : moving and renaming directory
- cmp : compare the file 
- rm file – delete file
## Package Management
- apt-cache search string : searching for package
- apt-get install package : install new package
- apt-get remove package : remove a package without removing configuration
- dpkg -l : list all installed package

## Networking Troubleshooting Commands
- ip addr/ifconfig : check the network interface status
- ping : test basic ip level connectivity to a specific ip
- traceroute : 	Trace the route packets take to a destination.
- dig / nslookup: query dns servers to trouble shoot name resoultion issues.
 