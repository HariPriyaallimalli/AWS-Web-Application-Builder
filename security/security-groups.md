# Security Groups

## Load Balancer Security Group
- Allow HTTP (port 80) from 0.0.0.0/0

## Web Server Security Group
- Allow HTTP (port 80) from Load Balancer only
- Allow SSH (port 22) from admin IP (optional)

## Database Security Group
- Allow MySQL (port 3306) from Web Server Security Group only

## Principle
No resource exposes unnecessary ports or public access.