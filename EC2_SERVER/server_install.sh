
#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo useradd OscarRobert
sudo groupadd cloud
