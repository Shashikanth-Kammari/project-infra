variable "project_name" {
  default = "expense"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24"]
}