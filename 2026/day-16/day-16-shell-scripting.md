# Shell Scripting Basics
## objective
  to learn the basic of shell scripting shebang,varibles,
  user input and condtional logic.
## Scripts created
   - hello.sh
   - varibles.sh

## Task 1: first scripts
 -- used shebang : which interpreter should execute the scripts.
 -- when you write like this #!/bin/bash it tells used bash to run the scripts
 -- ![alt text](<ScreenShots/Day16 hello script.png>)
## Task 2: Variables uses
  -- Used varible to store the value
  -- use that value by $ sign
  -- single quotes: value not expand
  -- double quotes: va;ue are expand
  ![alt text](<ScreenShots/Day16variables script.png>)

## Task 3: read inputs 
   -- use read to accept user input
   -- print user input value
   -- ![alt text](<ScreenShots/DAY 16 greet script.png>)

## Task 4: uses of if elif and else
  -- Used if-elif-else for number check
  -- Used file existence check with -f
  ![alt text](<ScreenShots/DAY16 check_number script.png>)
  ![alt text](<ScreenShots/DAY 16 file check scripts.png>)

## Task 5:
 --  Give space to enter the service name
 --  Stored service name in variable
 --   Used systemctl is-active
 -- Implemented decision-based execution
![alt text](<ScreenShots/Day16 server check scripts.png>)
 