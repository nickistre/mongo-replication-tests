#!/usr/bin/env bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

sudo cp /vagrant/data/mongodb/mongod.conf /etc/mongod.conf

sudo cp /vagrant/data/systemd/mongod.service /lib/systemd/system/mongod.service
sudo systemctl enable mongod.service
sudo service mongod start
