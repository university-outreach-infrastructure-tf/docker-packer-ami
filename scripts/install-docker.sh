#!/bin/sh

## Update the installed packages and package cache on your instance
sudo yum update -y

## Install the most recent Docker Community Edition package
sudo amazon-linux-extras install docker

# Enable docker on bootup
sudo systemctl enable docker.service

# Start the Docker service
sudo  systemctl start docker.service

# Add the ec2-user to the docker group so you can execute Docker commands without using sudo.
sudo usermod -a -G docker ec2-user