#!/bin/bash

# Affiche les informations sur l'interface réseau
echo "Affichage des informations sur l'interface réseau :"
ip link show

# Active l'interface eth0
echo "Activation de l'interface eth0 :"
ip link set dev eth0 up

# Obtient une adresse IP via DHCP
echo "Obtention d'une adresse IP via DHCP pour eth0 :"
dhclient eth0

# Affiche les informations sur l'adresse IP de l'interface eth0
echo "Affichage des informations sur l'adresse IP de l'interface eth0 :"
ip addr show eth0

# Modifie le fichier /etc/network/interfaces pour configurer eth0 en DHCP
echo "Modification du fichier /etc/network/interfaces pour configurer eth0 en DHCP :"
echo "auto eth0" | sudo tee -a /etc/network/interfaces > /dev/null
echo "iface eth0 inet dhcp" | sudo tee -a /etc/network/interfaces > /dev/null

# Redémarre le service networking
echo "Redémarrage du service networking :"
sudo systemctl restart networking

echo "Terminé."

echo "Update des packages de votre distribution"
apt update

echo "Telechargement des packages de votre distribution linux"
apt upgrade
