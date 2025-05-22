resource "aws_key_pair" "my_key_new" {
  key_name   = "${var.env}-infra-app-key"
  public_key = file("tf-module.pub")

  tags = {
    Environment = var.env
  }
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-infra-app-sg"
  description = "This will add terraform integrated security group"
  vpc_id      = aws_default_vpc.default.id

}

ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  description = "SSh open"
}

ingress {
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  description = "http open"
}


egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  description = "all access open outbound"

  tags = {
    Name = "${var.env}infra-app-sg"

  }

}

resource "aws_instance" "my_instance" {
  count = var.instance_count
  
}


