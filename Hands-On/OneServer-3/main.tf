terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
