# 🚀 Terraform AWS Infrastructure Project

This repository contains a modular **Terraform** configuration for deploying AWS resources such as **EC2 instances**, **VPC components**, and other cloud infrastructure. It is designed as a portfolio-ready project that demonstrates modern Terraform structure, reusability, and best practices.

---

## 📁 Project Structure

```
terraform/
├── main.tf               # Entry point: calls modules & root resources
├── variables.tf          # Input variable declarations
├── outputs.tf            # Output values like instance public IP
├── provider.tf           # AWS provider configuration (region, version)
├── terraform.tfvars      # Actual variable values (DO NOT COMMIT SECRETS)
├── .gitignore            # Ignore .terraform/, tfstate files, tfvars
├── README.md             # Project documentation
└── modules/
    └── ec2/
        ├── main.tf       # EC2 resource definitions
        ├── variables.tf  # Inputs for EC2 module
        └── outputs.tf    # Outputs from EC2 module
```

---

## 🎯 Objective

This project showcases:

* Infrastructure-as-Code using Terraform
* AWS provisioning in a repeatable and consistent way
* Modular design for reusability
* Version-controlled cloud infrastructure setup
* A practical DevOps portfolio example

---

## ⚙️ What This Terraform Setup Does

Depending on your configuration, the setup may:

* Pro

