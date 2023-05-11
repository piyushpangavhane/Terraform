provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "Intellipaat"
  user_data     = <<-EOF
                    #!/bin/bash
                    sudo apt update -y
                    EOF

  tags = {
    Name = "HelloWorld"
  }
}
