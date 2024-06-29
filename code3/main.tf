
resource "aws_lightsail_instance" "server" {
  name = "Terraform_server"
  #blueprint_id = "centos_stream_9"
  #blueprint_id = "ubuntu_22_04"
  #blueprint_id = "debian_12"
  #blueprint_id = "alma_linux_9"
  #blueprint_id = "amazon_linux_2023"
  blueprint_id = "amazon_linux_2"
  bundle_id    = "micro_1_0"
  #bundle_id         = "small_1_0"
  availability_zone = "us-east-1b"
  key_pair_name     = "lightsailvirginiakey"
  user_data         = file("script.sh")

  tags = {
    #"Name"       = "Terraform_server_demo"
    "env"        = "Dev"
    "Team"       = "DevOps"
    "Created by" = "Robert TEMTA"
  }

}