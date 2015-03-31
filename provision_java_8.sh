#Provision Oracle JDK 8

#If file is already downloaded and saved to /vagrant we reuse it
cp /vagrant/jdk-8u40-linux-x64.tar.gz jdk-8u40-linux-x64.tar.gz

wget -q -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz
sudo mkdir /opt/oracle_jdk
sudo tar -zxf jdk-8u40-linux-x64.tar.gz -C /opt/oracle_jdk
sudo ln -sf /opt/oracle_jdk/jdk1.8.0_40 /opt/oracle_jdk/latest
sudo update-alternatives --install /usr/bin/java java /opt/oracle_jdk/latest/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/oracle_jdk/latest/bin/javac 100
