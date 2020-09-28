resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0cda377a1b884a1bc"

  user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
}