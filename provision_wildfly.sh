#Provision WildFly 8.2.0

#If file is already downloaded and saved to /vagrant we reuse it
cp /vagrant/wildfly-8.2.0.Final.tar.gz wildfly-8.2.0.Final.tar.gz

sudo bash /vagrant/wildfly-install.sh
sudo mv /opt/wildfly/standalone/configuration/standalone.xml /opt/wildfly/standalone/configuration/standalone.old.xml
sudo cp /vagrant/wildfly_config_files/standalone.xml /opt/wildfly/standalone/configuration/standalone.xml
sudo cp -f /vagrant/wildfly_config_files/mgmt-users.properties /opt/wildfly/standalone/configuration/mgmt-users.properties
sudo cp -f /vagrant/wildfly_config_files/mgmt-groups.properties /opt/wildfly/standalone/configuration/mgmt-groups.properties
sudo chown wildfly:wildfly /opt/wildfly/standalone/configuration/standalone.xml
sudo chown wildfly:wildfly /opt/wildfly/standalone/configuration/mgmt-users.properties
sudo chown wildfly:wildfly /opt/wildfly/standalone/configuration/mgmt-groups.properties

sudo update-rc.d wildfly defaults
#Enable debug mode
sudo sed -i -e 's,DEBUG_MODE=false,DEBUG_MODE=true,g' /opt/wildfly/bin/standalone.sh
sudo service wildfly restart

wget -q https://jdbc.postgresql.org/download/postgresql-9.4-1201.jdbc41.jar
sudo /opt/wildfly/bin/jboss-cli.sh --file=/vagrant/wildfly_postgres_driver.cli
