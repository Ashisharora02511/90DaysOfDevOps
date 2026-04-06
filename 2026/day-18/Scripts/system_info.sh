#!/bin/bash

set -euo pipefail

print_hostname(){
 echo "System Info"
 hostnamectl
 echo "============================"

}

print_uptime(){


        echo "Uptime"
        uptime
echo "============================"
}

print_diskusage(){
     echo " Print disk usage"
     df -h | head -5
echo "============================"
}

memory_usage(){

     echo "Print memory usage"
     free -h

echo "============================"
}
echo "=========================================="
print_cpuprocess(){

    echo "Top CPU Process"
    ps aux --sort=%cpu | head -5

}

print_hostname
print_uptime
print_diskusage
memory_usage
print_cpuprocess
