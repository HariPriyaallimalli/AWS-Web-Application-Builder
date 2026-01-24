# The following script is to create secret in secret manager for accessing the database via the web application
# Replace the values for below placeholders with the actual values have used to configure the service
#<RDS Endpoint>
#<password>
#<username>
#<dbname>

aws secretsmanager create-secret \
    --name Mydbsecret \
    --description "Database secret for web app" \
    --secret-string "{\"user\":\"<username>\",\"password\":\"<password>\",\"host\":\"<RDS Endpoint>\",\"db\":\"<dbname>\"}"

