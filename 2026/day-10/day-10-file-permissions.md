# Day 10 – File Permissions & File Operations 
 ## Files Created 
 - devops.txt
 - notes.txt
 - script.sh

-------------
## Reading Files
- Read notes.txt using cat
- Viewed script.sh in read only mode using vim -R
- Viewed system users using head and tail on etc/passwd

### Permission Changes
- Before: rw-r--r--
- After: rwxr-xr-x
- Executed successfully using `./script.sh`
### devops.txt
 -  set to read only
 - set permission to chmod 444
 ### notes.txt
  - permission set to 640 
  ## Commands Used
touch, cat, echo, vim  
ls -l, chmod, head, tail  

---

## What I Learned
- Linux permissions are based on owner, group, and others
- Execute permission is mandatory to run scripts
- Incorrect permissions can block file access and execution
- chmod numeric values provide precise permission control

---

## Real-World DevOps Use
- Securing scripts and configuration files
- Controlling access in shared environments
- Preventing accidental file modifications in production

