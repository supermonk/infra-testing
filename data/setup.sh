whoami
sleep 2

export JAVA_VERSION=1.8.0
export KAFKA_PRE=kafka_2.11-
export KAFKA_VERSION=0.10.1.1
export ZOO_VERSION=3.4.8

yum install java -y
yum install java-$JAVA_VERSION-openjdk-headless -y
#yum update -y
yum install telnet -y
yum install -y libselinux-python

sudo su