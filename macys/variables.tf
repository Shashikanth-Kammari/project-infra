# ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "image_id" {
  type        = string #optional
  default     = "ami-0d9f6f413453de9a6" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


#r53 variables
variable "zone_id" {
    default = "Z09212853R93L2LZM383U"
}

variable "domain_name" {
    default = "shashikanth.com"
}