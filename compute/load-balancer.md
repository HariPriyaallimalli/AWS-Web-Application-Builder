# Application Load Balancer

## Configuration
- Internet-facing Application Load Balancer
- Listener on port 80
- Target group with EC2 instances

## Health Checks
- HTTP health checks configured
- Unhealthy instances removed automatically

## Benefit
Ensures traffic is routed only to healthy web servers.