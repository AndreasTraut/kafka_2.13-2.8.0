#!/bin/sh
apt-get update
apt-get install -y wget openjdk-8-jdk
cd /usr/lib/jvm
ln -s java-8-openjdk-amd64 jdk
cd /usr/local
wget https://downloads.apache.org/kafka/2.8.0/kafka_2.13-2.8.0.tgz
tar -xvf kafka_2.13-2.8.0.tgz
mv kafka_2.13-2.8.0 kafka
