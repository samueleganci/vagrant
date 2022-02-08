#!/bin/bash

echo "Php5 provisioning - begin"
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php5.6 php5.6-mysql #install php with mysql module
sudo service apache2 restart #start apache
echo "Php5 provisioning - end"
