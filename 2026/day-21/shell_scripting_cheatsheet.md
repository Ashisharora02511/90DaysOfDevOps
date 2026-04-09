# Day 21 – Shell Scripting Cheat Sheet
 - This cheat sheet summarizes shell scripting concepts learned   from Days 16–20.
   Goal: Quick revision + real DevOps reference.
# Task 1: Basics
### shebang
  ```bash
    #!/bin/bash
  ```
  - Tells system to which interpreter to use.
  -  important beacuse scripts me fail wehn wrong interpreter    executes scripts
### Running Scripts:
```bash
  chmod +x 
  ./script.sh
   bash script.sh
 ```
   chmod +x :given the running permission
   ./scripts.sh : run the scripts
    bash script.sh: run scripts without permission
### Comments:
```bash
  # used to write a comment
```
  - Used fro readability and documentation
### Variable
 ```bash
  USERNAME="ASHISH"
  echo "$USERNAME"
 ```
 - varibale used to temp store value
 - variables are local scope and global scope 
### Read Input
 ```bash
  read -p "Enter UserName: USERNAME"
 ```
  - Takes command line argument for interactions
### Command Line Arguments
 ```bash
 $0 Script name
 $1 First Command line Argument
 $# Total Arguments
 $@ All Arguments
 $? Last exit code
 ```
 - Helps make scripts  reusable and dynamic
# Task : Operators And Conditions
 ```bash
  ["$A" = "$B"]
   ["$A"! = "$B"]
  [-n "$Name"]
  [ -z "$Name"]

 ```
 - =: check to sting equal
 - !=: check string not equal
 - -z: chekc string empty
 - -n: check not empty
### Integer Operators
```bash
a=10
b=10

if [ "$a" -eq "$b" ]; then
    echo "Equal"
fi

if [ "$a" -ne 5 ]; then
    echo "Not equal to 5"
fi

if [ "$a" -gt 5 ]; then
    echo "Greater than 5"
fi

if [ "$a" -le 10 ]; then
    echo "Less than or equal to 10"
fi
```
- Used in logic like counters, retries, loops.
### File Tests
 ```bash
 [ -f file] # file exists
 [ -d dir] # directory exists
 ```
 - Import to check before used
### If Else
  ```bash
   if [ "$a" -le 10 ]; then
    echo "Less than or equal to 10"
fi
  ```
### Logical Opertaors
```bash
 cmd && cmd2
 cmd || echo "Hello"
 ```
 - &&: both conditions true
 - ||: one condtions true
 - ! : reverse condtion
###  Case Statement
  ```bash
  case var in 
  <Patten1>)
  command
  ;;
  <pattern2>
  command
  ;;
  *)
  defaul command
  ;;
  esac
  ```
  - Cleaner alternative to multiple if conditions.
# Task 3 : Loops
### For Loop
 ```bash
 for i in list # 1 2 3 
 do
  command;
done
 ```
 - Runs repeated actions — used in deployments & installs.
### While Loop
 ```bash
 while [condition]
 do
  command
 done
 ```
 - process file line by line
### Until Loop
```bash
until [condition]
do 
  command
done
```
- runs when condition false
### Break And Continue
 ```bash
  for i in {1..5};do if [ "$i" -eq 3];then break fi echo "$i" done
  for i in {1..5};do if [ "$i" -eq 3];then continue fi echo "$i" done
 ```
  - Stops or skips loop iteration — useful in error handling
---
### Loops Over File
```bash
for file in *.txt
do
    echo "Processing $file"
done
```
- Used in log automation and batch operations.
---
# Task 4 : Functions
### Define Function
```bash
hello(){echo "Say hello";}
```
- Reusable code blocks
---
### Return Functions vs Echo
### return exit status 0 = success non zero fail
```bash
 myfunc(){return 0; }
 myfunc; echo $?
```
- echo $? show the return status code by function.
### echo -> print output
```bash
myfunc(){ echo "Hello";}
```
- prints the text to terminal.
### Local variable
```bash
local var="value"
```
- Accessible with in function
# Task 5: Text Processing command
### grep
```bash
 grep -i error log.text
```
- extract the patter from file and input

### Flags:
```bash
 grep -i error log.text
```
- i : ignore case
- c: count match
- n : show line number
---
### awk
```bash
awk '{print $1}' file
```
- Powerful text processor for columns.
- Used for parsing logs, CSV, metrics.

---
### sed
```bash
sed 's/foo/bar/g' file
```
- Stream editor — replace or modify text automatically.

---

### cut
```bash
cut -d: -f1 /etc/passwd
```
- Extracts specific fields from lines.

---

### sort / uniq
```bash
sort file | uniq -c
```
- Find duplicates — useful for log summaries.

---

### tr
```bash
echo "HELLO" | tr A-Z a-z
```
- Translate characters (uppercase/lowercase).

---

### wc
```bash                                                                                                                                                                               
wc -l file
```
Counts lines — quick file stats.

---

### head / tail
```bash
tail -f logfile
```
- Real-time log monitoring.

---
# Task 6 : Useful one liners
```bash
find /var/log -type f -mtime +7 -delete
```
- find file in dir and delete older than 7 
```bash
  wc -l *.log
```
- count total lines in .log file
---
```bash
sed -i 's/old/new/g' *.log 
```
```bash
 systemctl is-active docker
```
- check service health
```bash
df -h |awk '$5>80'
```
- Detect high disk usage.

---

```bash
tail -f log | grep ERROR
```
- Live error monitoring

# Task 7: Error Handling and Debugging

### Exit Codes
```bash
echo $?
exit 1
```
- Indicates success or failure.

### Strict Mode
```bash
set -euo pipefail
-e stop on error
-u fail on undefined variable
```
- pipefail detect pipe failures

---

### Debug Mode
```bash
set -x
```
- Shows command execution step-by-step.

---

### Trap
```bash
trap 'cleanup' EXIT
```
- Runs cleanup before script exits.

---
# Task 8: Quick Reference Table

## Quick Reference Table – Shell Scripting Cheat Sheet

| Topic | Key Syntax | Example | Use Case |
|------|------------|---------|----------|
| Shebang | `#!/bin/bash` | `#!/bin/bash` | Define script interpreter |
| Variable | `VAR="value"` | `NAME="Ajay"` | Store reusable values |
| Echo | `echo` | `echo "Hello"` | Print output/logs |
| Read Input | `read -p` | `read -p "Name:" N` | Take user input |
| Arguments | `$1 $2 $# $@` | `./script.sh test` | Dynamic scripts |
| If Condition | `if [ cond ]; then` | `if [ -f file ]; then` | Decision making |
| String Test | `-z -n` | `[ -z "$VAR" ]` | Check empty variables |
| Integer Test | `-eq -gt` | `[ $A -eq 5 ]` | Numeric logic |
| File Check | `-f -d -e` | `[ -d /var/log ]` | Validate files safely |
| For Loop | `for i in list; do` | `for i in 1 2 3; do` | Repeat tasks |
| While Loop | `while read` | `while read line` | Process files |
| Function | `name(){}` | `greet(){ echo Hi; }` | Reusable logic |
| Local Var | `local VAR` | `local user="dev"` | Avoid variable conflicts |
| Strict Mode | `set -euo pipefail` | `set -euo pipefail` | Prevent script failure |
| Debug Mode | `set -x` | `set -x` | Trace execution |
| Grep | `grep -i pattern` | `grep -i error log.txt` | Log filtering |
| Awk | `awk '{print $1}'` | `awk -F: '{print $1}'` | Column parsing |
| Sed | `sed 's/a/b/g'` | `sed -i 's/foo/bar/g'` | Replace text |
| Cut | `cut -d -f` | `cut -d: -f1 file` | Extract fields |
| Sort | `sort -rn` | `sort -rn file` | Order output |
| Uniq | `uniq -c` | `sort file | uniq -c` | Count duplicates |
| Tr | `tr A-Z a-z` | `echo A | tr A-Z a-z` | Format text |
| WC | `wc -l` | `wc -l file` | Count lines |
| Head | `head -n` | `head -5 file` | View top lines |
| Tail | `tail -f` | `tail -f log.txt` | Live monitoring |
| Find | `find -mtime` | `find /var/log -mtime +7` | Cleanup automation |
| Systemctl Check | `systemctl is-active` | `systemctl is-active nginx` | Service health |
| Exit Code | `$?` | `echo $?` | Check success/failure |
| Trap | `trap 'cleanup' EXIT` | `trap 'echo done' EXIT` | Safe cleanup |