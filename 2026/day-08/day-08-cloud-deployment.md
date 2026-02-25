# Day 08 – AWS EC2, Bastion Host, Docker & Nginx Hands-On Practice

## Task 1: Bastion Host (Jump Server) Setup
  - Created two EC2 instance in same regions.
  - Configured tws-devops-1 as bastion / jump server.
  - configured tws-devops-2 as private server.
  - access tws-devops-2 using jump server
  - am using the same key for public and private.
  - using agent forwording to acess public and form public to private 
  - am using sshagent safe way to get acess.
#### Accessed tws-devops-2 only via tws-devops-1, not directly from local
### Key Commands Used
 #### script i added to direct connect in config file
 -  Host tws2
    HostName 56.228.33.62
    User ubuntu
    ProxyJump bastion
    IdentityFile ~/Downloads/tws-devops-1.pem

 -  Host bastion
    HostName 13.48.249.211
    User ubuntu
    IdentityFile ~/Downloads/tws-devops-1.pem    
  
## Observation
* This setup improves security by restricting direct SSH access
* Bastion host acts as a controlled entry point

## Task 2: Docker Installtion & Nginx (tws-devops-2)
  * Updated packages and installed Docker
  * Started Docker service
  * Pulled official nginx image
  * Created and ran an Nginx container
  * Verified container and Docker version
### Commands Used

sudo apt-get update

sudo apt-get install docker.io -y

sudo systemctl start docker

docker -v

docker pull nginx

docker run -d nginx

docker ps

## Task 3: Nginx Installation on Host (tws1)

* Installed Nginx directly on EC2 host
* Started and verified service status
* Checked logs using journalctl and /var/log/nginx
* Initially website was not accessible
* Identified missing Security Group rule
* Allowed port 80 in inbound rules
* Successfully accessed Nginx from browser

## commands
*  sudo apt-get update 
 -  latest package list download form outside
*  sudo apt install -y nginx
* systemctl start nginx
* systemctl status nginx
* sudo tail -n 20 /var/log/nginx/access.log
* sudo tail -n 20 /var/log/nginx/error.log
* journalctl -u nginx -n 20

## Observation



* Even if service is running, network rules can block access
* Security Groups are a common real-world issue during deployments
* Logs & File Handling
* Created log files using redirection


### Copied logs from EC2 to local system using scp



`scp -i tws.pem ubuntu@ec2-ip:/home/ubuntu/nginx-accesslogs.txt .`

`scp -i tws.pem ubuntu@ec2-ip:/home/ubuntu/nginx-errorlogs.txt .

## What I Learned Today



* Real-world use of Bastion Hosts
* Secure SSH key-based authentication
* Difference between host-based Nginx vs containerized Nginx
* Importance of Security Groups in AWS
* Log analysis for service troubleshooting
* End-to-end debugging mindset

