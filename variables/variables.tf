# 1. command line
# 2. tfvars
# 3. ENV variables
# 4. variable default value

variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    default = {
        Name: "db"
        Environment: "dev"
    }
}

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