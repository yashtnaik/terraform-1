resource "aws_instance" "terraform_1" {
  ami                     = "ami-002f6e91abff6eb96"
  instance_type           = "t2.micro"
  key_name = var.key
  security_groups = "${aws_security_group.allow_tls.id}"
  tags = {
    Name = "terraform-1"
  }  
}
