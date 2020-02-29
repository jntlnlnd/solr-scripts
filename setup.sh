sudo sed -i.bak -e "s/http:\/\/archive\.ubuntu\.com/http:\/\/jp\.archive\.ubuntu\.com/g" /etc/apt/sources.list

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install openjdk-11-jdk -y

wget https://archive.apache.org/dist/lucene/solr/8.3.1/solr-8.3.1.tgz
tar xzf solr-8.3.1.tgz solr-8.3.1/bin/install_solr_service.sh --strip-components=2
sudo bash ./install_solr_service.sh solr-8.3.1.tgz