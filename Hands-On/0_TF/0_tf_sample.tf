provider "aws" {
  profile = "ibm-tf"
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"
}

# terraform init
# terraform apply