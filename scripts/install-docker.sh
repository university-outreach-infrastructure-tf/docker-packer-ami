#!/bin/sh

# Updating your system packages and install the required dependencies
sudo yum update -y
sudo yum install yum-utils device-mapper-persistent-data lvm2 -y

# Add the Docker stable repository to your system
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y

# Install the latest version of Docker CE
sudo yum install docker-ce -y

# Enable docker on bootup
sudo systemctl start docker

# Start the Docker service
sudo systemctl enable docker

# Add the ec2-user to the docker group so you can execute Docker commands without using sudo.
sudo usermod -a -G docker centos