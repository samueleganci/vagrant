#!/bin/bash

echo "MySql provisioning - begin"

#installare mysql-server
sudo apt-get install mysql-server -y

#impostare la pw di root
mysql -u root -p -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Password&1';"


#abilitare le connessioni da altri server
echo "Updating bind address"
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

#riavviare mysql in modo da applicare le modifiche
echo "Restarting mysql service"
sudo service mysql restart

echo "MySql provisioning - end"
