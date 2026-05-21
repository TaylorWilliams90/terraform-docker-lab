## Terraform + Docker Lab 🚀
A hands-on demonstration of Infrastructure as Code (IaC) using Terraform to provision and manage containerized resources via Docker Desktop.

##  📌 Project Overview
The goal of this project is to move away from manual, imperative Docker commands (like docker run) and move toward a declarative approach. Instead of manually instructing Docker to pull images and start containers, we define the desired state of our infrastructure in Terraform configuration files.

This lab specifically automates the deployment of an Nginx Web Server on a local machine.

## 🛠 Tech Stack
Terraform: Infrastructure as Code (IaC) engine.
Docker Desktop: Container runtime and orchestration.
Nginx: The web server being deployed.
HCL (HashiCorp Configuration Language): The language used to write the Terraform configuration.
## 🚀 Features
Automated Provisioning: One-command deployment of web services.
Infrastructure as Code: The entire setup is version-controlled and reproducible.
Lifecycle Management: Easily scale up, update, or destroy the infrastructure using standard Terraform commands.
## 📋 Prerequisites
Before running this project, ensure you have the following installed:

Terraform (v1.0+)
Docker Desktop (Running and active)
## ⚙️ Installation & Usage
Clone the repository:

git clone https://github.com/YOUR_USERNAME/terraform-docker-lab.git
cd terraform-docker-lab
Initialize Terraform: This command downloads the necessary provider plugins (e.g., the Docker provider).

terraform init
Review the Plan: Check what Terraform will create before it happens.

terraform plan
Deploy the Infrastructure: Apply the configuration to start the Nginx container.

terraform apply -auto-approve
Verify the Deployment: Open your browser and navigate to: http://localhost:8080 (or whichever port you configured in your .tf file).

Clean Up: To stop the container and remove the infrastructure created by Terraform:

terraform destroy -auto-approve
## 📂 Project Structure
.
├── main.tf          # The primary Terraform configuration
└── README.md        # Project documentation
🛡️ License
## This project is open source and available under the MIT License [blocked].

Created by Taylor Williams