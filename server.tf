
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_instance" "nodered" {
  ami             = "ami-06a2a41d455060f8b"
  instance_type   = "t3.micro"
  key_name        = var.ami_key_pair_name
  security_groups = ["${aws_security_group.noderedi.name}"]
  user_data       = "${file("configure_nodered.sh")}"
  user_data_replace_on_change = true

  tags = {
    Name = "nodered instace"
  }
}