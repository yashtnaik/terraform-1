data "aws_instances" "try" {
    instance_state_names = ["running", "stopped"]
}
