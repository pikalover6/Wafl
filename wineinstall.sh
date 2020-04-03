echo 'Make sure to run this as root.'
#By Kai Howard
echo 'This script will install the latest version of wine to allow you to install windows applications'
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
echo 'Adding repositories...'
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ disco main'
echo 'Updating...'
sudo apt update
echo 'Installing package winehq-stable.'
sudo apt install --install-recommends winehq-stable
echo 'Done installing, you may now execute windows apps. Thank you for using this script.'


