# 🖥️ Terraform AWS EC2 Demo (Part 3)

This project demonstrates **provisioning an EC2 instance on AWS using Terraform**, along with networking, security groups, and key pairs.  
It is part of my DevOps learning journey and showcases Infrastructure as Code (IaC) skills.

---

## 🚀 What This Project Demonstrates

- **Terraform Infrastructure as Code (IaC)**
- **AWS EC2 provisioning**
- **VPC, Subnet, and Internet Gateway configuration**
- **Security Groups / SSH access**
- **IAM Roles and Instance Profiles**
- **Terraform Outputs for automation**
- **Version-controlled deployment via GitHub**

---

## 📁 Project Structure
```
.
├── main.tf # Provider and core configuration
├── ec2.tf # EC2 instance + Security Group
├── vpc.tf # VPC, Subnet, Internet Gateway, Route Table
├── iam.tf # IAM Role and Instance Profile
├── variables.tf # Input variables
├── outputs.tf # Terraform outputs
├── ssh/ # SSH keys (private NOT committed)
│ ├── my-key
│ └── my-key.pub
└── screenshots/ # AWS Console screenshots
```
---

## ⚡ Architecture Overview

**Region:** `us-east-1` (N. Virginia)  
**VPC CIDR:** `10.0.0.0/16`  
**Subnet CIDR:** `10.0.1.0/24`  
**Security Group:** SSH allowed from all IPs  
**EC2 Instance Type:** `t2.micro`  
**Key Pair:** `my-terraform-key`  

## Architecture Diagram
```
>         ┌───────────┐
          │  Internet │
          └─────┬─────┘
                │
                ▼
       ┌───────────────────┐
       │ Security Group    │
       │ Inbound: SSH 22   │
       └────────┬──────────┘
                │
                ▼
       ┌───────────────────┐
       │ Internet Gateway  │
       └────────┬──────────┘
                │
                ▼
       ┌───────────────────────────┐
       │          VPC              │
       │ CIDR: 10.0.0.0/16         │
       └───────────┬───────────────┘
                   │
                   ▼
       ┌───────────────────────────┐
       │        Subnet             │
       │ CIDR: 10.0.1.0/24         │
       └───────────┬───────────────┘
                   │
                   ▼
       ┌───────────────────────────┐
       │        EC2 Instance       │
       │ Security Group: SSH 22    │
       │ Key Pair: my-terraform-key│
       └───────────────────────────┘
```

---

## 📸 Screenshots from AWS Console

### EC2 Instance
![EC2 Instance]()

### Security Group
![Security Group](screenshots/security-group.png)

### VPC and Subnet
![VPC](screenshots/vpc.png)

### Terraform Output
![Terraform Output](screenshots/terraform-output.png)

---

## ▶️ Deployment Steps

1. **Clone the repository**

```bash
git clone https://github.com/<your-username>/terraform-aws-ec2-demo-part3.git
cd terraform-aws-ec2-demo-part3
```

Generate SSH key (if not already)
```
ssh-keygen -t rsa -b 4096 -f ~/.ssh/my-key
```

Update variables.tf if needed (region, key path, instance type)
Initialize Terraform
```
terraform init
```

Validate configuration
```
terraform validate
```

Plan the deployment
```
terraform plan
```

Apply the deployment
```
terraform apply
```

Type yes to confirm.

Connect to EC2 via SSH
```
ssh -i ~/.ssh/my-key ec2-user@<PUBLIC_IP>
```
Cleanup
```
terraform destroy -auto-approve
```

Always destroy resources to avoid unnecessary AWS charges.