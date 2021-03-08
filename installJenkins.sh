 wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
 sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
 sudo apt update
 sudo apt plan
 sudo apt list
 sudo apt list | grep jenkins
 sudo apt install jenkins -y
 systemctl status jenkins
 sudo ufw allow 8080
 more /var/lib/jenkins/secrets/initialAdminPassword
 sudo more /var/lib/jenkins/secrets/initialAdminPassword
 sudo usermod -aG docker jenkins
 sudo systemctl restart jenkins
