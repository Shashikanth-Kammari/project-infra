variable "ami-id" {
  type        = string #optional
  default     = "ami-0d9f6f413453de9a6" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "vpc_security_group_id" {
  default = ["sg-00a444020c19fefae"]
  type = list
}

variable "instance_names" {
  type = string
  default = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}