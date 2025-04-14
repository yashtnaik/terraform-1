data "aws_instances" "try" {
    instance_state_names = ["running", "stopped"]
}

data "aws_ami_ids" "my_amis" {
    filter {
        values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]  
    }
}