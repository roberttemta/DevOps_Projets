#This file is for all the outputs

output "ipublic_ip" {
  value       = aws_lightsail_instance.server.public_ip_address
  description = "The Public IP Address name of the Lightsail instance."
}

output "private_ip" {
  value       = aws_lightsail_instance.server.private_ip_address
  description = "The Private IP Address name of the Lightsail instance."
}

output "usame" {
  value = aws_lightsail_instance.server.username
}

output "key-pair" {
  value = aws_lightsail_instance.server.key_pair_name
}