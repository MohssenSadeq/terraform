# Here we define the backend configuration for the terraform cloud workspace 

# terraform {
#   backend "remote" {
#     organization = "mohssensadeq"

#     workspaces {
#       name = "terraform"
#     }
#   }
  

# required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }


provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_instance" "terraform-example" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
    tags = {
        Name = "terraform-example_1"
        Environment = "Dev"
    }
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-9868757"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
# }