---
layout: single
title: FusionInventory for GLPI 2.2.2
---

<div>

New version of plugin FusionInventory for GLPI (fixes version).

You can download this version [here](http://forge.fusioninventory.org/attachments/download/120/fusioninventory-for-glpi-2.2.2-release.tar.gz)

To upgrade :

* Remove folder glpi/plugins/fusioninventory
* uncompress archive in glpi/plugins folder
* in GLPI : Configuration > plugins and clic on 'install' and after 'activate'



This is the changelog of this corrective version :

<em>ENGLISH :</em>

* Fix last contact date when agent contact the first time GLPI
* Fix bug of inventory computer when agent configuration have inventory disabled
* Fix prolog (time to next execution of agent) in XML structure on all XML files transmited to agent
* Remove possibility to add manually agent, must added automatically when agent contact plugin
* Fix port detection when already created in discovery mode
* Add port on discovery when no port is in DB
* Fix check locks on network ports in discovery mode
* Fix update devices fields on discovery
* Fix update port in discovery mode when IP is empty in GLPI DB
* Auto assign snmp model to printer (in printer menu) in discovery mode
* Fix display network port lock in printers and networking devices
* Fix lock tab display when plugin not installed/activated
* Fix deconnection when we clic on a task
* Disable link into task because no task form required
* Fix PHP errors on /front/networking.form.php?ID=2
* Remove "core" field in processes list because it's obsolete
* Fix standard codings
* Optimize SQL query in unknown devices list
* Fix error in history connections
* Fix error in reports
* Fix error in port history
* Fix for networkport history
* Fix sql error in task management
* Manage hub creation / management when no CDP instead of no trunk mode
* Fix of creation of hub into always root entity to entity of range IP
* Fix hub management (big fix)
* Fix communication page
* Add management of models (add new, update old and remove not used) in update process
* Update model list (400 new devices and many corrections on current devices)
* New version of discovery.xml file to automatically get model for device
* Creation of unit tests
* Fix en_GB lang for ink cartridge
* Fix lang in de_DE file
* Fix lang traduction
* Fix traduction of fusioninventory reports
* Fix traduction of link : view complete port history



<em>FRANCAIS :</em>

* Correction de la mise à jour de la date de dernier contact de l'agent lorsque l'agent contacte GLPI pour la première fois
* Correction du bug de demande d'inventorier l'ordinateur quand la configuration de l'agent a inventaire désactivé
* Correction du prolog (temps pour la prochaine exécution de l'agent) dans la structure du XML pour tous les XML envoyés a l'agent
* Suppression de la possibilité d'ajouter un agent, il est créé automatiquement quand l'agent contacte le plugin
* Correction de la détection du port qui existe déjà en mode découverte
* Ajout du port en mode découverte quand ce port n'est pas en base de données
* Correction de la vérification du verrou sur les ports en mode découverte
* Correction de la mise à jour des champs en mode découverte
* Correction de la mise à jour des ports en mode découverte quand l'IP est vide dans la base de données
* Assignation automatique du modèle SNMP aux imprimantes en mode découverte
* Correction de l'affichage des verrous sur les ports réseau pour les imprimantes et matériels réseau
* Correction de l'onglet des verrous qui s'affiche quand le plugin n'est pas installé / activé
* Correction du bug qui deconnectait de GLPI quand on clic sur une tâche
* Suppression du lien dans les tâches car le formulaire n'est pas requis
* Correction d'erreurs PHP sur la page /front/networking.form.php?ID=2
* Suppression du champs "core" dans la liste des process car celui ci est obsolète
* Correction du code standardisé
* Optimisation des requêtes SQL dans la liste du matériel inconnu
* Correction des erreurs dans l'historique des connexions
* Correction d'erreurs dans les rapports
* Correction des erreurs dans l'historique des ports
* Correction de l'historique des ports réseau
* Correction des erreurs SQL dans la gestion des tâches
* Gestion des hub quand il y a pas de CDP au lieu de pas de mode trunk
* Correction de la création des hub de l'entité root à l'entité de la plage IP
* Correction de la gestion des hub (Grosses corrections)
* Correction de la page de communication
* Ajout de la gestion des modèles (ajout, mise à jour, suppression des modèles pas utilisé) dans le processus de mise à jour
* Mise à jour de la liste des modèles (400 nouveaux équipements et beaucoup de modifications sur les équipements dejà gérés)
* Nouvelle version du discovery.xml pour prendre automatiquement le modèle pour le matériel
* Création de tests unitaires
* Correction de l'anglais pour les cartouches d'encre
* Correction de la langue de_DE
* Correction des traductions de langue
* Correction de la traduction des rapports de fusioninventory
* Correction de la traduction des liens : voir l'historique des ports



</div>
