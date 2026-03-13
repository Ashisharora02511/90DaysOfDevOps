# Day 14 – Networking Fundamentals & Hands-on Checks

## Objective
 The goal of Day 14 was to understand core networking concepts and practice
 essential troubleshooting commands used in real DevOps incidents. 
- **OSI Model (7 Layers):**
  Physical → Data Link → Network → Transport → Session → Presentation → Application

- **TCP/IP Model (4 Layers):**
  Link → Internet → Transport → Application

- **Protocol Mapping:**
  - IP → Network / Internet layer
  - TCP/UDP → Transport layer
  - DNS, HTTP/HTTPS → Application layer
 **Example:**  
 `curl https://google.com`  
   Application (HTTP) → Transport (TCP) → Internet (IP)
## Command Hands-on Checklist 
- hostname -I : identity check or ip address

- ping <Target>:latency check and no packet loss

- traceroute <target>: Shows the route packets take and highlights any slow hops.

- ss -tulpn : list one listening service and its port.

- dig : perform dns lookup

- curl -I https://google.com : Received HTTP 200/301 response confirming web service is reachable.

- netstat -an | head :Displays LISTEN and ESTABLISHED connections.


## Reflection
Fastest signal command: ping and curl -I
If DNS fails: Inspect Application layer (DNS resolution)
If HTTP 500 occurs: Check application logs and service status
Follow-up checks: ss -tulpn, journalctl -u <service>

---

## What I Learned
How OSI and TCP/IP layers map to real commands
How to quickly validate network, DNS, and HTTP issues
A structured approach to network troubleshooting