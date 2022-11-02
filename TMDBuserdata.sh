#!/bin/bash
yum update -y
yum install docker -y
usermod -a -G docker ec2-user
pip3 install docker-compose
systemctl enable docker
systemctl start docker
yum-config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
yum install gh -y
cd /home/ec2-user/
git clone https://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:x-oauth-basic@github.com/Yevgeniis/aws_restart_course.git
echo "API_Key='<insert here your API key>'" >> ./aws_restart_course/.env
chown -R ec2-user:ec2-user /home/ec2-user/aws_restart_course
cd ./aws_restart_course/
docker-compose up -d


