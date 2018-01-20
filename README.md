# OwnCloud Deployment Scripts
Ansible scripts for deploying _ownCloud_ in a network. The _webapps_ are replicated and load balanced. It also includes a jMeter test scenario to loadtest the system.

##Components:
- Webapp (running in a _docker_ container, may be replicated)
- Load balancer (using _haproxy_)
- Database (using _mysql_)
- Storage server (_NFS_ Server)
- Elastic search + kibana (to analyse the metrics collected from all the machines)

##Todo:
 - Fix error in case the _storage machine_ contains a _webserver_
 - Replicate the remaining components
 - Translate some stuff in portuguese 

##Credits:
This was originally made for a Systems Deployment and Benchmarking class with the help of Luciano Silva and Lisandra Silva.
