data "aws_instances" "try" {
    instance_state_names = ["running", "stopped"]
}

data "aws_ami" "my_ami" {
    most_recent      = true
    owners           = ["amazon"]
}