#/bin/bash
# download Jenkins Repository file and save it in the yum configuration directory
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
# import the GPG key used to verify the Jenkins package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# update all the installed packages to the latest version
sudo yum upgrade -y
# Add required dependencies for the jenkins package
sudo yum install fontconfig java-21-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
