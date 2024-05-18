resource "aws_instance" "test_instance" {
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t3.small" : var.instance_type
}