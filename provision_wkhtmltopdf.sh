#Provision WKHTMLTOPDF

#If file is already downloaded and saved to /vagrant we reuse it
cp /vagrant/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb wkhtmltox-0.12.2.1_linux-trusty-amd64.deb

wget -q -c http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
sudo apt-get -y install fontconfig libjpeg-turbo8 xfonts-75dpi
sudo dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
