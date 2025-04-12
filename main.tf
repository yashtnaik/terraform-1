resource "aws_instance" "terraform_1" {
  ami                     = "ami-0dee22c13ea7a9a67"
  instance_type           = "t2.micro"
  key_name = var.key

  tags = {
    Name = "terraform-1"
  }
}