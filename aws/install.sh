#!/bin/sh
#step - 1 install java 
sudo yum -y install wget java-1.8.0*
cd /etc/profile.d 
sudo wget https://raw.githubusercontent.com/mohdsyed/devops/master/aws/java.sh
sudo chmod a+x java.sh 
sudo source /etc/profile.d/java.sh

#adding repository to linux 
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

#isntalling jenkins 

sudo yum -y install jenkins

sudo systemctl start jenkins
sudo systemctl enable jenkins




