sudo apt-get update

echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
sudo apt-get install -y -q

echo "Installing Java 11"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get -y -q install openjdk-11-jdk-headless

echo "Installing Apache2"
sudo apt-get install apache2 -y

echo "Installing Codedeploy Agent"
sudo apt-get install ruby-full
sudo apt-get install wget
cd /home/ubuntu
wget https://aws-codedeploy-{{user `aws_region`}}.s3.{{user `aws_region`}}.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto > /tmp/logfile
sudo service codedeploy-agent start