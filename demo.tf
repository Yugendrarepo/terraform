provider "aws" {
  region     = "eu-north-1"
  access_key = "REMOVED"
  secret_key = "KIYJWDQYNALyt2XhgKJ66WkBhGDwdBb2SMJwoK4M"
}

resource "aws_instance" "myec2" {
  ami           = "ami-00f34bf9aeacdf007"  # ✅ Correct AMI
  instance_type = "t3.micro"               # or t3.micro depending on your preference
}