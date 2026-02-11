# Day02 - Linux Architecture, Process, And systemd notes

## What we dicussed in today's live session
- Linux is the base OS for most Devops and cloud servers
- Understanding internals in real production troubleshooting
- Focus wan on processes and systemd,not just command

## Linux Architecture
- Kernel: is the main component it is lies b/w shell and hardware.It controls the activity of other hardware component.
- Shell: is also software or it can be determine as the interface to the kernel.it takes command from the user and interprets them.The shell tansmits thats command to kernel,which then perform the requested operations.
- systemd: it initialize the system,manage services and controls system resources during stratup and runtime.

## Process in Linux
- A process in linux is an instance of running program
- Kernel manages process,allocating resources like cpu time.
- Every process is assigned a uqiue identifier called a Process ID.

## Process States

- New : The process is being created and its Process Control Block is being prepared,but it hasn't been admitted to main memory yet.

- Ready : The process is loaded into the main memory and is waiting for the cpu scheduler to assign it to a processor.

- Running : The process's instruction are currently being executed by cpu core.

- Terminated / Exit: The process has finished its execution or was stopped. The OS then deletes its PCB and frees up its resources.

## systemd Basics
- systemd manages services on Linux
- It starts services during boot
- It can restart failed services automatically

## Common systemd Commands Used
- systemctl status service
- systemctl start service
- systemctl stop service
- systemctl restart service
- journalctl -u service

## Practical Understanding
- Most real issues are related to service failure or high resource usage
- Knowing where to check logs saves a lot of time

## Key Learning
Linux knowledge is not about memorizing commands,
it is about understanding how the system behaves in production.



