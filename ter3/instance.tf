resource "aws_instance" "web" {
  ami           = var.ami_name
  instance_type = var.instance_type

  key_name = var.key_name

  # interpollation ${aws_security_group.name.name}  get the value from 1 resource to another one
  security_groups = ["${aws_security_group.allow_ssh.name}", "${aws_security_group.allow_http.name}"]

  tags = var.instance_tags
}

