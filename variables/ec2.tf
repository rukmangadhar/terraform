# ec2 instance 
resource "aws_instance" "test_instance" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type

    tags = var.tags
}

# aws security group
# resource <resource type> <resource name>
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = "allowing SSH access"

    ingress {
        from_port        = var.port_number
        to_port          = var.port_number
        protocol         = var.sg_protocal
        cidr_blocks      = var.sg_cider
    }

    egress {
        from_port        = 0
        to_port          = 0   # to 0 from 0 means, opening all protocols
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = var.sg_cider
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Rukmangadhar"
    }
}

