resource "aws_instance" "web" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"

  key_name = "deployer-key2"

  security_groups = ["allow_ssh", "allow_http"]

  tags = {
    Name = "my isntance"
  }
}
