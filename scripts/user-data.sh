#!/bin/bash

apt update -y

apt install -y docker.io

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

apt install -y amazon-cloudwatch-agent