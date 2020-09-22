

from centos:7

maintainer naveen <navsin189@gmail.com>

run yum -y install which wget 

run yum -y install java-1.8.0-openjdk
run yum -y install java-1.8.0-openjdk-devel package

run wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

run rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

run yum -y install jenkins

run yum -y install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-17.12.0.ce-1.el7.centos.x86_64.rpm

add functions	/etc/init.d/

expose 8080

add config.xml /var/lib/jenkins/

run chmod 777 /etc/init.d/functions


cmd java -jar /usr/lib/jenkins/jenkins.war --httpPort=8080 -d
