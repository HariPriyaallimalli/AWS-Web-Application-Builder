# Architecture Explanation

## Design Goals
- Handle thousands of concurrent users
- Ensure high availability during peak admission periods
- Automatically scale based on load
- Secure database and credentials
- Minimize operational cost

## Architecture Overview
Users access the application through an Application Load Balancer.
The load balancer distributes traffic across EC2 instances in an Auto Scaling Group
deployed across multiple Availability Zones.

The application connects to a MySQL database hosted on Amazon RDS, which resides
in private subnets and is not publicly accessible.

Database credentials are securely stored in AWS Secrets Manager and retrieved
by EC2 instances using IAM roles.

## High Availability
- Multiple EC2 instances across AZs
- Load balancer health checks
- Auto Scaling replaces unhealthy instances automatically

## Scalability
- Target tracking Auto Scaling policy
- Automatic scale-out during peak load
- Scale-in during low traffic to save cost

## Security
- Public access only to load balancer
- Database accessible only from web servers
- Secrets Manager used for credentials
- Least-privilege IAM roles