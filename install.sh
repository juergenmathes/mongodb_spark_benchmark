#!/bin/bash

# Install mongo db from official webpage - 2019-12-04
# Link: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

sudo apt-get update

sudo apt-get install -y mongodb-org

ulimit -n # increase that number for better performance

# starts and some tests
sudo service mongod start
sudo service mongod status
ll /var/lib/mongodb
cat /etc/mongod.conf
mongo &
sleep 5
sudo service mongod stop

# sudo service mongod stop
# sudo service mongod restart
# 
# # unistalling
# sudo service mongod stop
# sudo apt-get purge mongodb-org*
# sudo rm -r /var/log/mongodb
# sudo rm -r /var/lib/mongodb

