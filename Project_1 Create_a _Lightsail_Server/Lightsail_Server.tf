
resource "aws_lightsail_instance" "server" {
  name = "Terraform_server"
  #blueprint_id = "centos_stream_9"
  #blueprint_id = "ubuntu_22_04"
  //blueprint_id = "debian_12"
  #blueprint_id = "alma_linux_9"
  #blueprint_id = "amazon_linux_2023"
  blueprint_id = "amazon_linux_2"
  bundle_id    = "micro_1_0"
  #bundle_id         = "small_1_0"
  availability_zone = "us-east-1b"
  key_pair_name     = "lightsailvirginiakey"
  //user_data = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"

  tags = {
    //"Name"       = "Terraform_server_demo"
    "env"        = "Dev"
    "Team"       = "DevOps"
    "Created by" = "Robert TEMTA"
  }

}

output "instance_ip" {
  value       = aws_lightsail_instance.server.public_ip_address
  description = "The Public IP Address name of the Lightsail instance."
}

output "username" {
  value = aws_lightsail_instance.server.username
}

output "key-pair" {
  value = aws_lightsail_instance.server.key_pair_name
}