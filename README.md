# 🚀 Terraform AWS EC2 Deployment

This repository contains a simple Terraform script to provision an EC2 instance in AWS using the `eu-north-1` region.

---

## 📁 Project Structure

terraform/
│
├── main.tf             # Entry point: resource definitions (like EC2, S3)
├── variables.tf        # Variable declarations
├── outputs.tf          # Output definitions
├── provider.tf         # AWS provider config (region, access, etc.)
├── terraform.tfvars    # Actual variable values (NEVER commit secrets here!)
├── .gitignore          # Ignore terraform.tfstate, .terraform/ etc.
├── README.md           # Documentation for the repo
└── modules/            # Optional: reusable module directory
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
