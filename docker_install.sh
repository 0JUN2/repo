#!/bin/sh
yum -y install docker
systemctl enable docker
systemctl start docker
systemctl status docker
docker version