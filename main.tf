resource "aws_instance" "terraform_1" {
  ami                     = "ami-0dee22c13ea7a9a67"
  instance_type           = "t2.micro"
  key_name = var.key

  tags = {
    Name = "terraform-1"
  }
}

resource "aws_security_group" "terraform_1" {
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 8080
    }
    tags = {
    Name = "terraform-1"
  }
}