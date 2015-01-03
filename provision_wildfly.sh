#Provision WildFly 8.2.0

sudo bash wildfly-install.sh
sudo mv /opt/wildfly/standalone/configuration/standalone.xml //opt/wildfly/standalone/configuration/standalone.old.xml
sudo cp /opt/wildfly/standalone/configuration/standalone-full.xml //opt/wildfly/standalone/configuration/standalone.xml

sudo service wildfly start