# ec2 instance 
resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t2.micro"

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]

        }
    )
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

