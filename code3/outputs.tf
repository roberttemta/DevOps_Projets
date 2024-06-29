#This file is for all the outputs

output "instance_ip" {
  value       = aws_lightsail_instance.server.public_ip_address
  description = "The Public IP Address name of the Lightsail instance."
}

output "usame" {
  value = aws_lightsail_instance.server.username
}

output "key-pair" {
  value = aws_lightsail_instance.server.key_pair_name
}