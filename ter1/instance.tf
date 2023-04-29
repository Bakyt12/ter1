resource "aws_instance" "web" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"

  key_name        = "deployer-key"
  security_groups = ["allow_ssh"]

  tags = {
    Name = "my isntance"
  }
}

