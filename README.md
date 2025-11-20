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

* Provision an EC2 instance
* Generate SSH key pairs (optional)
* Create a security group with HTTP/SSH access
* Output useful data such as public IP, instance ID, etc.
* Use modules for clean organization and scalability

Possible future extensions:

* VPC, subnets, route tables
* Load balancer
* S3 buckets
* RDS
* IAM roles
* CloudWatch logging

---

## 🛠️ Prerequisites

You must have:

* Terraform v1.x
* AWS CLI configured (`aws configure`)
* An AWS account
* Access key & secret key (via IAM user or environment variables)

Optional:

* SSH client to connect to EC2 instance

---

## 🔧 How to Use

### 1️⃣ Initialize Terraform

```
terraform init
```

### 2️⃣ Validate configuration

```
terraform validate
```

### 3️⃣ Preview execution plan

```
terraform plan
```

### 4️⃣ Apply the configuration

```
terraform apply
```

Type `yes` when prompted.

### 5️⃣ View outputs

```
terraform output
```

### 6️⃣ Destroy resources when done

```
terraform destroy
```

---

## 🔐 Security Notes

* **Never commit your `terraform.tfvars` with secrets**, AWS keys, or private data.
* Do not push `.tfstate` files to GitHub.
* `.gitignore` ensures sensitive Terraform files are not tracked.
* Prefer environment variables or AWS profiles for credentials.

---

## 📦 Modules

### `modules/ec2/`

This module provisions:

* EC2 instance
* Security group
* Optional user data
* Tags
* Outputs (public IP, instance ID, etc.)

Example usage:

```hcl
module "web_server" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  key_name      = var.key_name
  ami_id        = var.ami_id

  tags = {
    Name = "MyTerraformInstance"
  }
}
```

---

## 📘 Future Enhancements

* Full VPC module
* AutoScaling group + ALB
* S3 backend for remote state
* DynamoDB table for state locking
* CI/CD pipeline (GitHub Actions)
* Integration with Ansible

---

## 🔍 Troubleshooting

* **Invalid AWS credentials** → Re-run `aws configure`
* **Region mismatch** → Update region in `provider.tf`
* **Module not found** → Check the module path

---

## 🙌 Contributions

Feel free to fork, modify, and submit PRs.

---

## 📄 License

This project is licensed under the MIT License.
