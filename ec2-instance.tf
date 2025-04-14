resource "aws_instance" "terraform_1" {
  ami                     = "ami-002f6e91abff6eb96"
  instance_type           = "t2.micro"
  key_name = var.key
  vpc_security_group_ids = [ output.sg ]
  tags = {
    Name = "terraform-1"
  }  
  depends_on = [ aws_security_group.allow_tls ]
}
