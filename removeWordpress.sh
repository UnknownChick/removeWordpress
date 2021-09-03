#!/bin/bash

echo "Quel est le nom de domaine site internet à supprimer ?"
read name
sudo a2dissite ${name}.conf
sudo rm /etc/apache2/sites-available/${name}.conf
sudo rm -r /var/www/${name}
sudo sed -i "/${name}/d" /etc/hosts
sudo systemctl reload apache2