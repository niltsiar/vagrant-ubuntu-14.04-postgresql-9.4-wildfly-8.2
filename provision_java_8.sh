#Provision Oracle JDK 8

#wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz

cp /vagrant/jdk-8u25-linux-x64.tar.gz jdk-8u25-linux-x64.tar.gz
sudo mkdir /opt/oracle_jdk
#sudo tar -zxf jdk-8u25-linux-x64.tar.gz -C /opt/oracle_jdk
sudo ln -sf /opt/oracle_jdk/jdk1.8.0_25 /opt/oracle_jdk/latest
sudo update-alternatives --install /usr/bin/java java /opt/oracle_jdk/latest/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/oracle_jdk/latest/bin/javac 100