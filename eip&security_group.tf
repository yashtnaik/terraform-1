# resource "aws_eip" "tejas" {
#     domain   = "vpc"  
#     tags = {
#         Name = "Tejas"
#     }
#     ass
# }

# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic and all outbound traffic"

#   tags = {
#     Name = "tejas"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = "${aws_eip.tejas.public_ip}/32"
#   from_port         = 443
#   ip_protocol       = "tcp"
#   to_port           = 443
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }

