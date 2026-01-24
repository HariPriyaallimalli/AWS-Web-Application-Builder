# EC2 Web Server Setup

## Instance Configuration
- Ubuntu latest AMI
- t3.micro instance type
- User data script installs Node.js and application code

## Application Deployment
- JavaScript application deployed using provided scripts
- Application connects to RDS using Secrets Manager

## Validation
- Application accessible through Load Balancer
- CRUD operations verified