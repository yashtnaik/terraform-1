resource "aws_instance" "terraform_1" {
  ami                     = output.ami_ids.id
  instance_type           = "t2.micro"
  key_name = var.key
#   vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  tags = {
    Name = "terraform-1"
  }  
#   depends_on = [ aws_security_group.allow_tls ]

}
