# output "eip_public_ip" {
#     value = aws_eip.tejas.public_ip
# }

# output "sg" {
#     value = aws_security_group.allow_tls.id 
# }

output "data_instance" {
    value = data.aws_instances.try.ami
}