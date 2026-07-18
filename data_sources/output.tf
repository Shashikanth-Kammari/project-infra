output "ami_id" {
  value = data.aws_ami.ami_id.id
  
}

output "owner_id" {
  value = data.aws_vpc.default.owner_id
}

output "vpc_cide_block" {
  value = data.aws_vpc.default.cidr_block
}
