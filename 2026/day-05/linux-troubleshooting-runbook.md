## Day 05 - Linux Troubleshooting Runbook (SSh Service)

# Target Service
  ssh

  - This runbook captures a basic Linux troubleshooting drill performed on an
AWS EC2 Ubuntu instance. The goal is to verify system health and ensure
the SSH service is running normally.

---

## Environment Check
 - commands
  uname -a
   - this will give you kernel level information 
  cat /etc/os-release
   - this will give you linux distribution details
  lsb_release -a 
    - os level infomation with formated way 
    ScreenShot :
    ![alt text](image.png)
    