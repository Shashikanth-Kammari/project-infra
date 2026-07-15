variable "image_id" {
  default = "ami-00adafae70b8029d8"
  description = "RHEL AMI Id"
}

variable "secuirty_group" {
  default = "allow_ssh"
}

variable "instnace_type" {
  default = "t3.micro"
}

variable "tags" {
  default = {
    Project = "macys"
    Environment = "dev"
    Module = "DB"
    Name = "DB"
  }
}

variable "sg_name" {
  default = "alloe_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
  type = number
}

variable "protocol" {
  type = string
  default = "tcp"
}

variable "cidr_block" {
  type = list(string)
  default = ["0.0.0.0/0"]
}