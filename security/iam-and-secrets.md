# IAM and Secrets Management

## IAM Role
- EC2 instances use LabInstanceProfile
- Permissions allow access to Secrets Manager only

## Secrets Manager
- Database username and password stored securely
- Application fetches credentials at runtime
- No hardcoded secrets in application code

## Security Advantage
- Credentials can be rotated without code changes
- Reduced risk of credential leakage