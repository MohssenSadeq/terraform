provider "aws" {
  region = "us-east-1"
  profile = "default"
}
resource "aws_instance" "terraform-example" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
    tags = {
        Name = "terraform-example_1"
    }
}
