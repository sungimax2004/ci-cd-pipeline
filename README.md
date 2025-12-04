# 🚀 End-to-End AWS CI/CD Pipeline with Terraform, CodePipeline, CodeBuild, CodeDeploy & EC2

This project demonstrates a **complete, production-ready CI/CD pipeline** on AWS, built entirely using **Terraform**, AWS native DevOps services, and a simple Python Flask web application.

The goal of the project is to showcase key DevOps engineering skills:
- Infrastructure as Code (Terraform)
- Continuous Integration (CodeBuild)
- Continuous Delivery/Deployment (CodeDeploy)
- Automated pipeline orchestration (CodePipeline)
- Application hosting on EC2 with deployment lifecycle hooks
- Bash scripting, artifact packaging, and environment promotion
- GitHub integration with webhooks
- AWS IAM security roles and permissions

This project reflects modern DevOps practices used in UK engineering teams and demonstrates readiness for cloud automation, CI/CD engineering, and AWS pipeline design roles.

---

## 🏗️ **Architecture Overview**

This solution deploys:

### **1. CI/CD Pipeline**
| Stage | Service | Purpose |
|-------|---------|---------|
| Source | GitHub | Push/PR triggers pipeline |
| Build | CodeBuild | Installs dependencies, runs tests, packages artifact |
| Deploy | CodeDeploy | Deploys app to EC2, runs lifecycle scripts |

---

### **2. Runtime Infrastructure**
- **EC2 instance** running Flask app with Gunicorn
- **CodeDeploy agent** installed via user-data
- **IAM roles** for CodePipeline, CodeBuild, CodeDeploy, and EC2
- **S3 Bucket** for storing build artifacts
- **Deployment lifecycle scripts** for installation, start/stop, dependency management

---

## 🖥️ **System Diagram**

