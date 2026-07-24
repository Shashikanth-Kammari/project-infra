output "public_ip" {
  value = aws_instance.db_instance.public_ip
}

output "private_ip" {
  value = aws_instance.db_instance.private_ip
}


output "instance_id" {
  value = aws_instance.db_instance.id
}



