#!/bin/bash
yum update -y
yum install docker -y
usermod -a -G docker ec2-user
pip3 install docker-compose
systemctl enable docker
systemctl start docker
yum-config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo #in order to be able to install rpm packages
yum install gh -y
cd /home/ec2-user/
git clone https://github.com/HadarNeu/TMDB-Group-Project.git
echo "API_Key='<insert here your API key>'" >> ./TMDB-Group-Project/.env
chown -R ec2-user:ec2-user /home/ec2-user/TMDB-Group-Project #i want my user to have access to the directory!
cd ./TMDB-Group-Project/
docker-compose up -d


