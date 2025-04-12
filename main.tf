resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_security_group" "tejas" {
  name        = "tejas"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "tejas"
  }
}

resource "aws_vpc_security_group_ingress_rule" "tejas_ipv4" {
  security_group_id = aws_security_group.tejas.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.tejas.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_instance" "terraform_1" {
  ami                     = "ami-002f6e91abff6eb96"
  instance_type           = "t2.micro"
  key_name = var.key
  security_groups = "${aws_security_group.tejas.id}"
  tags = {
    Name = "terraform-1"
  }
  depends_on = [aws_security_group.tejas]
  
}

