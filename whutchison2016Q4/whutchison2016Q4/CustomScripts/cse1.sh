# Custom Script for Linux
#sudo apt-get install xrdp#sudo apt-add-repository ppa:ubuntu-mate-dev/ppa#sudo apt-add-repository ppa:ubuntu-mate-dev/trusty-mate#sudo apt-get update #sudo apt-get upgrade#sudo apt-get install ubuntu-mate-core ubuntu-mate-desktop
#echo mate-session >~/.xsession#sudo service xrdp restart

sudo apt-get update
sudo apt-get -y install xrdp
sudo apt-add-repository -s -y ppa:ubuntu-mate-dev/ppa
sudo apt-add-repository -s -y ppa:ubuntu-mate-dev/trusty-mate
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
sudo apt-get -y autoremove (new*)
sudo apt-get -y install ubuntu-mate-core ubuntu-mate-desktop
echo mate-session >~/.xsession
sudo service xrdp restart
