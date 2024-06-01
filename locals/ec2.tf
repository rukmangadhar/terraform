# ec2 instance 
resource "aws_instance" "test_instance" {
    ami = local.ami_id
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type

    tags = local.tags
}
