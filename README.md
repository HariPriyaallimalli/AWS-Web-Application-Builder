# Highly Available & Scalable Web Application on AWS

## Overview
This project demonstrates the design and deployment of a highly available, scalable,
secure, and cost-optimized web application on AWS following the AWS Well-Architected Framework.

The application simulates a university student records system that supports viewing,
adding, deleting, and modifying student records during peak admission periods.

## Architecture Summary
- Application Load Balancer distributes traffic across multiple EC2 instances
- Auto Scaling Group ensures scalability and high availability
- Amazon RDS (MySQL) hosts the database in a private subnet
- AWS Secrets Manager securely stores database credentials
- Secure VPC with public and private subnets across multiple Availability Zones

## AWS Services Used
- Amazon EC2
- Application Load Balancer
- EC2 Auto Scaling
- Amazon RDS (MySQL)
- Amazon VPC
- AWS IAM
- AWS Secrets Manager
- AWS Cloud9

## Key Features
- High availability across multiple Availability Zones
- Automatic horizontal scaling based on traffic
- Secure database with no public access
- No hardcoded credentials in application code
- Cost-efficient instance sizing and scaling
- Load tested to validate performance under peak usage

## Testing Performed
- Functional testing (CRUD operations)
- Load testing using Cloud9 scripts
- Auto Scaling verification during traffic spikes
- Failover testing by terminating EC2 instances

## Architecture Diagram
![Architecture Diagram](architecture/architecture-diagram.png)

## Screenshots
Screenshots demonstrating deployment, scaling, and security are available in the screenshots pdf file.