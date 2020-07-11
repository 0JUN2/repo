#/bin/sh

# gcc install
yum -y groupinstall "Development Tools"

# pcre install
yum -y install pcre pcre-devel

# zlib install
yum -y install zlib zlib-devel

# OpenSSL install
yum -y install openssl openssl-devel

mkdir /home/src
cd /home/src/
wget http://nginx.org/download/nginx-1.18.0.tar.gz
tar xvfz nginx-1.18.0.tar.gz
cd nginx-1.18.0
./configure --prefix=/etc/nginx
make
make install
