#/bin/sh
yum groupinstall "Development Tools"
yum install pcre pcre-devel
yum install zlib zlib-devel
yum install openssl openssl-devel
mkdir /home/src
cd /home/src/
wget http://nginx.org/download/nginx-1.18.0.tar.gz
tar xvfz nginx-1.18.0.tar.gz
cd nginx-1.18.0
./configure --prefix=/etc/nginx
make
make install
