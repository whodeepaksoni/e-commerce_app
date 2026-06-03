# E-Commerce App Deployment using DevOps Pipeline

This project demonstrates the automated deployment of an E-Commerce application using modern DevOps tools and cloud automation practices.

## Project Overview

The goal of this project is to automate infrastructure provisioning, server configuration, containerization, and application deployment using Terraform, Ansible, Docker, and Jenkins.

## Tech Stack

- AWS
- Terraform
- Ansible
- Docker
- Jenkins
- Linux
- HTML

## Repository Structure

```bash
e-commerce_app/
├── ansible/        # Ansible playbooks and configuration
├── code/           # Application source code
├── terraform/      # AWS infrastructure provisioning files
├── Dockerfile      # Docker image build file
├── Jenkinsfile     # CI/CD pipeline configuration
└── index.html      # Application entry file
Features
Automated AWS infrastructure provisioning using Terraform
Server configuration and package installation using Ansible
Dockerized E-Commerce web application
Jenkins CI/CD pipeline for automated build and deployment
Infrastructure and deployment workflow designed for DevOps practice
Linux-based deployment environment
CI/CD Workflow
Developer pushes code to GitHub
Jenkins pulls the latest code from the repository
Docker image is built using the Dockerfile
Application container is deployed on the target server
Ansible handles server setup and configuration
Terraform manages AWS infrastructure provisioning
How to Run
1. Clone the Repository
git clone https://github.com/whodeepaksoni/e-commerce_app.git
cd e-commerce_app
2. Provision Infrastructure
cd terraform
terraform init
terraform plan
terraform apply
3. Configure Servers using Ansible
cd ../ansible
ansible-playbook -i inventory playbook.yml
4. Build Docker Image
docker build -t ecommerce-app .
5. Run Docker Container
docker run -d -p 80:80 ecommerce-app
Jenkins Pipeline

The project includes a Jenkinsfile for automating the deployment process.

Pipeline stages include:

Code checkout
Docker image build
Application deployment
Server configuration
Deployment verification
Project Purpose

This project was created to practice and demonstrate real-world DevOps skills including infrastructure automation, CI/CD pipeline creation, containerization, and automated deployment.

Author

Deepak Soni

