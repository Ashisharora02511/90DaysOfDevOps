# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

## Task1:- How name become ip?
### What happens when we type `google.com`?
 When I type google.com in the browser, it first queries a DNS server to get the IP address of the domain. The DNS server returns the IP address. Then the browser sends a request to that IP address, and the server responds with the website content.

### DNS Record Types
 - A – Maps domain name to IPv4 address
 - AAAA – Maps domain name to IPv6 address
 - CNAME – Maps one domain name to another domain name
 - MX – Specifies mail server for the domain
 - NS – Specifies authoritative name servers for the domain
### DNS Hands-on (`dig`)
 `dig google.com`
## Task 2: IP Addressing
#### What is IPv4?
 An IPv4 address is a 32-bit unique identifier assigned to a device on a network.
#### Public vs Private IP
A public IP address is accessible over the internet, while a private IP address is used within a local network. For example, 8.8.8.8 is a public IP, and 192.168.1.10 is a private IP.  

 
#### Private IP ranges are:
 - 10.0.0.0 to 10.255.255.255
 - 172.16.0.0 to 172.31.255.255
 - 192.168.0.0 to 192.168.255.255

## Task 3: CIDR & Subnetting
What does /24 mean?
/24 means 24 bits are used for the network part, leaving 8 bits for hosts.

#### Usable Hosts
/24 → 254 usable hosts
/16 → 65,534 usable hosts
/28 → 14 usable hosts

### Why Subnetting?
Subnetting is used to divide a large network into smaller networks.
It helps improve network performance, enhances security,
and makes network management easier.

#### CIDR Table
CIDR	Subnet Mask	        Total IPs	Usable Hosts
/24	    255.255.255.0	     256	     254
/16	    255.255.0.0	         65,536	     65,534
/28	    255.255.255.240      16	         14

## Task 4: Ports – The Doors to Services
#### What is a Port?
- A port identifies a specific service running on a machine.
- Multiple services can run on one IP using different ports.

Common  Ports
Port	Service
22	    SSH
80	    HTTP
443	    HTTPS
53	    DNS
3306	MySQL
6379	Redis
27017	MongoDB

Hands-on

`ss -tulpn`

### Real Debugging flow
 - DNS check :nslookup domain.com
 - Ping check:ping domain.com
 - Port check :telnet domain.com 80
 -  Service check: curl http://domain.com


