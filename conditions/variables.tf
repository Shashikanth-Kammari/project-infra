variable "image_id" {
  type        = string #optional
  default     = "ami-0d9f6f413453de9a6" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_name" {
  default = ["db","frontend","backend"]
}

variable "tags" {
  default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
}