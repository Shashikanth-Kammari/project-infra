variable "ami_id" {
  type = string
  default = "ami-0d9f6f413453de9a6"
}

variable "vpc_security_group_ids" {
  type = list
  default = ["sg-053d3546684b66ed3"]   
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "tags" {
  type = map
  default = {}  #this means empty so, not mandatory
}