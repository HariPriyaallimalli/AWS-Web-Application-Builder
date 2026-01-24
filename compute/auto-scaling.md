# Auto Scaling Configuration

## Auto Scaling Group
- Minimum: 2 instances
- Desired: 2 instances
- Maximum: Based on expected peak load

## Scaling Policy
- Target tracking based on CPU utilization

## Result
- Automatic scale-out during load testing
- Scale-in during low traffic to reduce cost