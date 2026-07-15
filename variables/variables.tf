variable "image_id" {
  default = "ami-00adafae70b8029d8"
  type = string
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
    project = "macys"
    environment = "dev"
    module = "DB"
    name = "DB"
  }
}

variable "sg_name" {
  default = "alloe_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}