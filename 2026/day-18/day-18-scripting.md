# Day 18 - Shell Scripting: Functions & Intermediate Concepts

## Functions Scripts

### Functions help in reusable 
  ![alt text](ScreenShot/functions.png)
### Disk Check Script
  ![alt text](ScreenShot/check_disk.png)
### Strict Mode
  ![alt text](ScreenShot/Strict_demo.png)
   - set -e → Exit if command fails
   - set -u → Exit if undefined variable used
   - set -o pipefail → Pipeline fails if any command fails
### Local vs Global
   - local: are acees inside function can`t access aoutside
   - global: are accessible from everywhere
   ![alt text](ScreenShot/local_demo.png)
### System -info
 - Commands used:

  - df -h
  - free -h
  - ps aux
![alt text](ScreenShot/systeminfo.png)
  
