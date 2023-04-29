resource "aws_instance" "web" {
  ami           = var.ami_name
  instance_type = var.instance_type

  key_name = var.key_name

  security_groups = ["allow_ssh"]

  tags = var.instance_tags
}

