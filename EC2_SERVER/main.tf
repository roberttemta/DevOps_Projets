
resource "aws_instance" "server1" {
  ami           = "ami-0eaf7c3456e7b5b68"
  instance_type = "t2.micro"
  key_name      = "virginiakey"
  user_data     = file("server_install.sh")
  security_groups = [ aws_security_group.sg1.name ]

  tags = {
    Name = "Terraform-server"
  }


}


resource "aws_ebs_volume" "Vol1" {
  availability_zone = aws_instance.server1.availability_zone
  size              = 15

  tags = {
    Name = "Dev-volume"
  }
}


resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.Vol1.id
  instance_id = aws_instance.server1.id
}
