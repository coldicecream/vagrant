# Vagrant VM for Sonarqube

Setup a virtual machine for using Sonarqube Community Edition

## Steps for setup

- `vagrant up`
- `vagrant ssh`
- `cd /vagrant`
- `sudo sysctl -w vm.max_map_count=262144`
- `sudo sysctl -w fs.file-max=131072`
- `docker build -t my-sonarqube .`
- `docker compose up -d`

## Steps for adding cxx plugin

- `wget https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/latest-snapshot/sonar-cxx-plugin-2.1.0.232.jar`
- `mv sonar-cxx-plugin-2.1.0.232.jar /vagrant/sonarqube_extensions/plugins`
- `docker restart vagrant-sonarqube-1`
