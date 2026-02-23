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
  - ssh -A -i tws-devops-1.pem ubuntu@Public_IP
  - ssh ubuntu@Private_IP
## Observation
* This setup improves security by restricting direct SSH access
* Bastion host acts as a controlled entry point
