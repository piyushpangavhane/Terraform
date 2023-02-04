provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "Intellipaat"
  user_data     = <<-EOF
                    #!/bin/bash
                    sudo apt update -y
                    sudo apt install git -y
                    EOF

  tags = {
    Name = "HelloWorld"
  }
}
