#!/bin/bash


#Description: Jenkins Server Installation
#When: June 2026


echo "Jenkins Installation starting..."


# Add Corretto repo (provides Java 21 on Amazon Linux 2)
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo

# Add Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/rpm/jenkins.repo

sudo yum upgrade -y

# Install Java and Jenkins
sudo yum install -y fontconfig java-21-amazon-corretto-devel
sudo yum install -y jenkins

# Start Jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "Jenkins is now successfully installed. Please access the browser on port 8080"
exit 0
