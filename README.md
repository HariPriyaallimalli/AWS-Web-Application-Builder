# Cloud Web Application Architecture

## Overview
This project demonstrates the design and deployment of a **highly available, scalable, secure, and cost-optimized web application** on AWS.  
It is implemented as a **Proof of Concept (POC)** for hosting a university student records web application during peak admission periods.

The architecture follows **AWS Well-Architected Framework best practices** and is built using core AWS services such as Amazon EC2, Application Load Balancer, Auto Scaling, Amazon RDS, and AWS Secrets Manager.


## Problem Statement
Example University experienced performance issues and downtime during peak admission periods due to high traffic on their student records web application.

The goal of this project is to:
- Improve application availability and performance
- Support thousands of concurrent users
- Ensure secure database access
- Implement scalability and fault tolerance
- Optimize infrastructure cost


## Architecture Summary
- Internet-facing **Application Load Balancer** distributes incoming traffic
- **EC2 instances** run the web application inside **private subnets**
- **Auto Scaling Group** ensures scalability and high availability across multiple Availability Zones
- **Amazon RDS (MySQL)** hosts the database in a private subnet
- **AWS Secrets Manager** securely stores database credentials
- **IAM roles** allow EC2 instances to retrieve secrets securely


## Architecture Diagram
The complete architecture is shown below:

![Architecture Diagram](architecture/Architecture Diagram.jpeg)


## AWS Services Used
- Amazon EC2
- Application Load Balancer (ALB)
- EC2 Auto Scaling
- Amazon RDS (MySQL)
- Amazon VPC
- AWS Secrets Manager
- AWS Identity and Access Management (IAM)
- AWS Cloud9
- AWS Pricing Calculator


## Key Features
- **High Availability**  
  EC2 instances deployed across multiple Availability Zones with Auto Scaling.

- **Scalability**  
  Automatic scale-out and scale-in based on application load.

- **Load Balancing**  
  Application Load Balancer evenly distributes traffic and performs health checks.

- **Security**  
  - EC2 instances and database are placed in private subnets  
  - Database is not publicly accessible  
  - Credentials are stored in AWS Secrets Manager  
  - IAM roles are used instead of hardcoded credentials  

- **Cost Optimization**  
  Uses right-sized EC2 instances and scales dynamically based on demand.


## Network Design
- Custom VPC with CIDR block `10.0.0.0/16`
- Public subnets for the Application Load Balancer
- Private subnets for EC2 instances and Amazon RDS
- Database traffic restricted to port **3306**
- Web traffic allowed only through port **80**


## Database Design
- Amazon RDS MySQL
- Single Availability Zone (as per lab constraints)
- Hosted in private subnet
- Accessible only from EC2 instances
- Credentials managed using AWS Secrets Manager


## Secrets Management
- Database credentials are stored in **AWS Secrets Manager**
- EC2 instances retrieve credentials at runtime using **IAM roles**
- No secrets are hardcoded in application code

## Testing Performed
- Functional testing:  
  - View, add, update, and delete student records
- Load testing:  
  - Simulated high traffic using Cloud9 load testing scripts
- Auto Scaling validation:  
  - Verified instance scale-out and scale-in behavior
- Security validation:  
  - Confirmed database is not publicly accessible


## Assumptions & Constraints
- Deployed in a single AWS Region
- HTTP used instead of HTTPS (POC scope)
- Single-AZ RDS deployment
- Public access without authentication
- Built within AWS Academy lab service restrictions


## Conclusion
This project successfully demonstrates how to design and deploy a **production-style web application architecture** on AWS that is secure, scalable, and highly available.  
It highlights best practices for cloud networking, compute scalability, database security, and credential management.