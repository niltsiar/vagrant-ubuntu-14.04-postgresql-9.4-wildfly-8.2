#vagrant-ubuntu-14.04-postgresql-9.4-wildfly-8.2.0

This will prepare a vagrant box based on **Ubuntu 14.04** from cloud image and will install **PostgreSQL 9.4**, **JDK 1.8.0_60** and **WildFly 8.2.0.**

The machine also contains **WKHTMLTOPDF 0.12.2.1** to convert from *HTML* to *PDF*.

It will also forward the following local ports to the vagrant machine:
* 5432 - PostgreSQL
* 8080 - WildFly
* 9990 - WildFly management console
* 8787 - WildFly debug port

To use it just import the box

> vagrant box add https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box --name ubuntu/trusty64-cloudimage

And start it

> vagrant up

This machine is meant to be used for development and includes a *testdb* database already created as well as *postgres* password for *postgres* user.

Wildfly install script based on the one provided by *Dmitriy Sukharev*. For more info see http://sukharevd.net/wildfly-8-installation.html
