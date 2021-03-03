## START
## install docker
sudo yum update -y

## install docker package
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

## add docker repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

## install docker ce
sudo yum install -y docker-ce

## centos add docker second-group
sudo usermod -aG docker centos

## start docker
sudo systemctl start docker
sudo systemctl enable docker

sudo yum update -y nss curl libcurl
sudo chmod 666 /var/run/docker.sock

## set log of docker-container
echo "/var/lib/docker/containers/*/*.log {
        rotate 30
        daily
        compress
        size=10M
        missingok
        delaycompress
        copytruncate
}" > ./docker-container
sudo cp docker-container  /etc/logrotate.d/docker-container
sudo rm -rf docker-container
sudo logrotate -fv /etc/logrotate.d/docker-container

# python2 -> python3
sudo yum install -y epel-release
sudo yum install -y python36 python36-libs python36-devel python36-pip
sudo mv /usr/bin/python /usr/bin/python_backup
sudo ln -s /bin/python3.6 /bin/python

# set yum's python to python2
sudo sed -i '1c\
#!/usr/bin/python2
'  /usr/bin/yum

sudo sed -i '1c\
#!/usr/bin/python2
'  /usr/libexec/urlgrabber-ext-down

# install docker-compose to use docker-compose module in ansible
sudo pip3 install --upgrade pip

sudo pip3 install docker-compose
sudo pip3 install docker

## make docker network
sudo docker network create -d bridge my-docker

## install git
sudo yum install -y git

## install net-tools
sudo yum install -y net-tools

## END
