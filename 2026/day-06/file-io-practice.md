# Day 06 – Linux Fundamentals: Read and Write Text Files

## Task

- Today’s goal is to **practice basic file read/write** using only fundamental commands.

## Checking the existing directories and disk usage 
 
 - Command used :
    ls -l :  check out file and directories with their group and permission
     
## Create directory and file 
  - Commands:
    mkdir day-06 : create directory with name day-06
    touch notes.txt : create an empty file 

## Move file to directory
 - commands 
    mv notes.txt Day-06/: move notes file to day-06 folder 
    cd Day-06 : chnage my location to Day-06 folder
    ls ; ls to check file and their permission
## Writing content into the file
  - so if you wanna write content into the file multiple ways are avilable
  Commands :
    echo "line" > notes.txt : write content into the file if alredy there then simply override
    echo "line2" >> notes.txt : append the content into the file
    echo "line3" | tee -a notes.txt: append content into the file and show that also on terminal

## Reading full file content
  - command
        cat notes.txt : show content on the terminal

## Read file content into parts
   - commands :
      head -n 1 notes.txt 
      head -n 3 notes.txt
      tail -n 1 notes.tx
- `head` is useful to see the beginning of a file
- `tail` is useful for checking recent logs or last lines

## Final Learning
 - learn muiple way to write into file
 - understood diffrence b/w > and >> 
 - seen how tee is working
 - Practiced reading files efficiently using `cat`, `head`, and `tail`
- These commands are commonly used while working with logs and configs
      
     


