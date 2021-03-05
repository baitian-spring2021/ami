sudo apt-get update

echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
sudo apt-get install -y -q

echo "Installing Java 11"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get -y -q install openjdk-11-jdk-headless

echo "Installing Apache2"
sudo apt-get install apache2 -y
