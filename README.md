# 🖥️ Terraform AWS EC2 Demo — Part 3

This project demonstrates how to deploy a secure **AWS EC2 instance using Terraform** as part of my hands-on DevOps learning journey.  
It focuses on foundational **Infrastructure as Code (IaC)** concepts such as provisioning compute resources, managing security groups, and configuring SSH access.

---

## 🚀 What This Project Demonstrates

- ✔️ Terraform Infrastructure as Code (IaC)  
- ✔️ EC2 provisioning on AWS  
- ✔️ Security group design (ingress/egress rules)  
- ✔️ SSH key pair generation and secure access  
- ✔️ Terraform state & outputs (public IP, instance ID)  
- ✔️ Cloud infrastructure automation basics  

---

## 📁 Project Structure
```
.
├── main.tf # EC2 instance + security group
├── variables.tf # Input variables for region, AMI, instance type, etc.
├── outputs.tf # Outputs: public IP, instance ID
└── ssh/
└── my-key.pem # Private SSH key (excluded from Git)
```
