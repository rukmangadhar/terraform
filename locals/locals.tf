locals {
  sg_id = "sg-018fd6668e3c38c5f"
  ami_id = "ami-090252cbe067a9e58"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

  tags = {
    Name = "Locals"
  }
}