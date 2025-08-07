# nodejs-demo-app
Automating  Nodejs(web Application) Code Deployment Using Github CI/CD Pipeline.
# Terraform Node.js App Deployment

This project provisions a local Docker container using Terraform to run a Node.js application.

## Technologies
- Terraform
- Docker
- Node.js

## Steps
1. Docker image is pulled from Docker Hub.
2. Terraform provisions the container.
3. App runs locally on `http://localhost:3000`.

## Commands
```bash
terraform init
terraform apply
