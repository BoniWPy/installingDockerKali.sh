#!/bin/bash
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install docker-ce -y
adduser $USER
usermod -aG docker $USER
systemctl enable docker
docker pull kalilinux/kali-linux-docker
docker run -ti kalilinux/kali-linux-docker /bin/bash
echo "BYE..GOOO.."
