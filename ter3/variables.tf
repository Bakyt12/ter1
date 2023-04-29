variable "key_name" {
  type        = string
  default     = "deployer-key"
  description = "key pair name"
}

variable "ssh_port" {
  type        = number
  default     = "22"
  description = "SSH Port"
}

variable "http_port" {
  type        = number
  default     = "80"
  description = "HTTP Port"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 isntance type"
}

variable "ami_name" {
  type        = string
  default     = "ami-02396cdd13e9a1257"
  description = "EC2 ami name"
}

#map (key-value)
variable "instance_tags" {
  type        = map(any)
  description = "EC2 instance tags"
  default = {
    owner = "DevOps"
    key2  = "Terraform"
  }
}

#list ("string") - []
variable "ingress_cidr" {
  type        = list(any)
  description = "(optional) describe your variable"
  default     = ["0.0.0.0/0"]
}
