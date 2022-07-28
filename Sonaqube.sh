#!/bin/bash
#Author: Louis
#Description: Script installation of Sonaqube. open your linux terminal to run the commands.

echo " installation of Java; either oracle JRE11 or OpenJDK 11. we will 
go ahead and install OpenJDK 11"

sleep 2

sudo yum update -y
sleep 2
sudo yum install java-11-openjdk-devel -y 
sleep 3
sudo yum install java-11-openjdk -y

sleep 2

echo "Download SonarQube latest versions on your server"
sleep 2

cd/opt
sleep 2

sudo yum install wget -y
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2

echo " Extract packges"
sleep 2
sudo yum install unzip -y
sleep 2
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2

echo "Change ownership to the user and Switch to Linux binaries directory to start service "
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 2
./sonar.sh start
sleep 2
echo "Sonarqube installed and started successfully"
sleep 2
./sonar.sh  status



