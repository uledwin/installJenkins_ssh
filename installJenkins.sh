#!/bin/bash

echo ":::::: Actualizando respos:::"
sudo apt update

echo "::::::: Instalando Java ::::"
#sudo apt install openjdk-11-jdk
sudo apt install openjdk-8-jdk -y
java -version
sleep 2s



echo ":::::::::: Agregando Clave de repositorio Jenkins :::::::::::::::"
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

echo ":::::::::: Instalando Jenskins ::::::::::::::"
sudo apt update
sudo apt install jenkins -y
sudo systemctl status jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins


echo " Inicie Jenkins con la ip distinta a localhost o 127.0.0.1 y el puerto 8080 " 
ifconfig | awk '/inet addr/{print substr($2,6)}'
hostnamectl

echo -e "::::::: Codigo de inicio Jenkins ::::::: \n Este código tendrá que usarlo en el primer inicio de jenkins "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword








