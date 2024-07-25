---
title: Webclues Infotech
description: Repository for provisioning AWS resources with Terraform and deploying applications with Kubernetes.
---

# webcluesinfotech

This repository contains configurations for provisioning AWS resources using Terraform,  and deploying a simple web application using Kubernetes.


Simple Node.js Application Deployment on Docker Container

Dockerfile: Configures a Docker image for a Node.js application listening on port 3000.

Kubernetes Deployment

Kubernetes Deployment YAML: Defines a deployment for a web application with 3 replicas using the nginx:latest image, including liveness and readiness probes, and guaranteed QoS.

Resource Provisioning and Configuration Management

Terraform Script: Provisions an AWS EC2 instance with necessary security group and VPC configurations.
Ansible Configuration: Configures the EC2 instance with an Nginx web server and deploys the Node.js application.
Files

Dockerfile: Docker configuration for the Node.js application.
main.tf: Terraform configuration file for provisioning AWS resources.
variables.tf: Defines variables used in the Terraform configuration.
nginx-deployment.yaml: Kubernetes deployment configuration for Nginx.
playbook.yml: Ansible playbook for configuring the EC2 instance.

Setup
Prerequisites
Terraform installed on your machine.
kubectl configured to manage your Kubernetes cluster.
Ansible installed on your machine.
Access to an AWS account and the necessary permissions to create resources.

Steps
1. Docker Setup
Build Docker Image:


docker build -t <username>/node-app:latest .
Run Docker Container:

docker run -p 3000:3000 <your-docker-username>/node-app:latest

2. Kubernetes Deployment
Apply Kubernetes Deployment:

kubectl apply -f nginx-deployment.yaml

3. Terraform Configuration
Initialize Terraform:
terraform init
terraform plan
terraform apply

4. Ansible Configuration
Update Ansible Inventory File: Make sure the inventory file specifies the EC2 instance created by Terraform.

Run Ansible Playbook:

ansible-playbook -i <inventory-file> playbook.yml