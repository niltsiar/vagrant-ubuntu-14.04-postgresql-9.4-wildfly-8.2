#vagrant-ubuntu-14.04-postgresql-9.4-wildfly-8.2.0

This will prepare a vagrant box based on Ubuntu 14.04 from cloud image and will install PostgreSQL 9.4 and WildFly 8.2.0.

It will also forward the following local ports to the vagrant machine:
* 5432 - PostgreSQL
* 8080 - WildFly

To use it just import the box

> vagrant box add https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box --name ubuntu/trusty64-cloudimage

And start it

> vagrant up

This machine is meant to be used for development and includes a testdb database already created as well as **postgres** password for *postgres* user.

JDK 1.8.0_25