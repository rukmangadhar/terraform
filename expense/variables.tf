# ec2 variables
variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

# SSecurity group variables
variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "port_number" {
    type = number
    default = 22
}

variable "sg_protocal" {
    type = string
    default = "tcp"
}

variable "sg_cider" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

# r53 varibles

variable "zoone_id" {
    type = string
    default = "Z0025813368RUY79HH4QH"
}

variable "domain_name" {
    type = string
    default = "practdaws.online"
}