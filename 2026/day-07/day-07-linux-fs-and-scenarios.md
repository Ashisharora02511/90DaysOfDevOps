# Day 07 – Linux File System Hierarchy & Scenario-Based Practice

## Task
 Today's goal is to understand where things live in Linux and practice troubleshooting like a DevOps engineer.
 - You will create notes covering:

Linux File System Hierarchy (the most important directories)
Practice solving real-world scenarios step by step
This consolidates your Linux fundamentals and prepares you for real-world troubleshooting.

## Part 1 Linux File System 
 - In linux everything treated as file.
 - All files  are divided into 3 types.
 ###  Normal or Ordinary files:
      These files contains data either test files and binary files.
 ### Directory Files :
     These files represent directories.Directory can contain files and sub directories.
 ### Device Files :
     In linux every device is represented as a files.By using this device we can communicate with that device.
## Linux File System Hierarchy
  - It start with root 
  ### `(/) root`
   - / is the top most directory
   - Any other directory and file starts from here.
   - important directory like : bin,sbin,etc,dev,var,tmp,home...
 ### `bin`
   - bin means binary 
   - This directory contains all binary excutable related to our linux command.
   - bin contains binary file of command thats related to normal user
 ### `sbin`
   - sbin means systembin.
   - it contains all binary excutable related to high end admin commands like disk partition,n/w management,reboot,shutdown.
   - sbin contains binary file that related to super user.
 ### `etc`
   - This directory conatins all system configruation.These config can be used to customize behaviour of linux os.
   - all user info avilable in etc/passwd file.
   - all group info are available in etc/group.
   - Host info are available in etc/hosts file.
 ### `tmp`
   -  tmp means temproary.it contains all temproary file created in this current session.
   - if any file required for the current session create that file inside tmp.These file are       automatically deleted at the time of system shutdown.
 ### `dev`
   - dev means device.
   - device is also treated as file,every devices treated as file.
   - by using that file we can communicate with devices.
   - All device related file store into dev directory e.g tty - Terminal related, fd - floppy related
 ### `mnt` 
   - mnt means mounting.
   - we have to attach external file system file from pen drive,cd, hard disk.Then only we can use that external files.This attachment processing called mounting.
   - The files of manual mounting will placed inside mnt directory.
 ### `home`
   - As linux is multi user os, for every user a separate directroy will created to hold his specific data like video, image, documents.All these user directories will be stored inside home directory.
 ### `root`
   - its a home directory for super user.
   - root user home here
 ### `var`
  - var means varible data.
  - if any data which is keep on changing,such type data will be stored inside this directory.
  - logs file store inside var.
 ### `opt`
   - opt means optional
   - This directory contains all 3rd party software installation files.
## Hands-On command
- du -sh /var/log/* 2>/dev/null | sort -h | tail -5 cat  /etc/hostname  ls -la -a
![alt text](image.png)

# Part 2: Scenario-Based Practice

 ## Scenario 1: Service Not Starting (cron)

 ### step 1 : check service status
   - systemctl status cron
 ### why ; to check the servive is active, inactive or failed

  - Screen Shot :

  ![alt text](image-1.png)
 ### step 2: stop the service manually
   - systemctl stop cron
 ### why : simulate a fail scenario
 ![alt text](image-2.png)

### step 3: check log for cron last 30 lines
 ![alt text](image-3.png)
### What i learned 
 - Always check the service status first.
 - logs explain why service failed
 - systemd store the log in journald.
## Scenario 2: High CPU Usage
 ### Step 1: Live CPU monitoring
 - `top`
 ### Why: To identify processes consuming high CPU in real time.

 ### Step 2: Sort processes by CPU usage
`ps aux --sort=-%cpu | head -10`
### Why: To quickly identify top CPU-consuming processes.
  
### What I Learned

- "top" is useful for live monitoring. ps aux helps in quick analysis during incidents.
![alt text](image-4.png)

## Scenario 3: File Permission Issue 
 ### Step 1: Create a script 
  - vim backup.sh
  - excute ./backup 
  - its not running beacuse or permission
### step 2 : change file permission
  chmod 764 backup.sh 
  Screenshot:
  ![alt text](image-5.png)

  ### What I Learned

- Scripts require execute permission (x).
- ls -l -a clearly shows permission issues.

--

### Why This Matters for DevOps

- Logs help debug production issues. 
- Service status checks are the first step in troubleshooting. 
- Permission issues are common deployment problems.
 
--

## Summary of Learnings

- Linux file system structure
- Service troubleshooting using systemctl
- Log analysis using journalctl
- CPU troubleshooting
- File permission fixes




