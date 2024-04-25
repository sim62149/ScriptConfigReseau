# NetConfig.sh

## Description

Le script "NetConfig.sh" est un utilitaire de ligne de commande conçu pour faciliter la configuration initiale des interfaces réseau sur des machines Linux. Son objectif principal est d'automatiser le processus de configuration réseau en exécutant plusieurs étapes, notamment l'activation de l'interface, l'obtention d'une adresse IP via DHCP et la mise à jour des paramètres de configuration réseau.

### Fonctionnalités

1. **Activation de l'interface réseau :** Le script active l'interface réseau spécifiée, permettant ainsi la communication avec le réseau.

2. **Configuration DHCP :** Il configure l'interface pour obtenir automatiquement une adresse IP via le protocole DHCP, ce qui simplifie la configuration pour les environnements où les adresses IP sont attribuées dynamiquement.

3. **Mise à jour du fichier de configuration :** Le script met à jour le fichier de configuration réseau `/etc/network/interfaces` pour refléter les modifications apportées à l'interface, en ajoutant les directives nécessaires pour une configuration DHCP.

4. **Redémarrage du service networking :** Une fois les modifications apportées, le script redémarre le service networking pour appliquer les nouveaux paramètres de configuration réseau.

### Utilisation

Pour utiliser ce script, exécutez-le depuis un terminal en tant qu'utilisateur root ou avec les privilèges sudo. Il guide l'utilisateur à travers les étapes nécessaires pour configurer correctement l'interface réseau.

### Remarque

Assurez-vous de comprendre les implications de l'exécution de ce script, en particulier en ce qui concerne la configuration réseau de votre système. Des privilèges administratifs sont nécessaires pour exécuter ce script, car il modifie les paramètres système sensibles.
