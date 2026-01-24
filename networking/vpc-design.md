# VPC Design

## VPC Configuration
- Custom VPC with CIDR block (e.g., 10.0.0.0/16)

## Subnets
Public Subnets:
- Used for Application Load Balancer
- Internet Gateway attached

Private Subnets:
- Used for EC2 instances and RDS
- No direct internet access

## Availability Zones
- Minimum two Availability Zones for high availability

## Routing
- Public subnet route table routes traffic to Internet Gateway
- Private subnet route table restricts internet access

## Security Benefit
This design ensures that only the web layer is exposed to the internet
while the database remains isolated and secure.