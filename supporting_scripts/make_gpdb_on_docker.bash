#!/bin/bash

# set -e

echo
echo "------------------------------"
echo "Add Greenplum PPA repo & GP OSS"
echo "------------------------------"
echo

apt-get update
apt-get --assume-yes install software-properties-common
add-apt-repository -y ppa:greenplum/db
apt-get update
apt-get --assume-yes install greenplum-db-oss
apt-get --assume-yes install libc6 vim
localedef -i en_US -f UTF-8 en_US.UTF-8

pip install psutil lockfile 
echo "/usr/sbin/sshd" >> /root/.bashrc 
mkdir -p /var/run/sshd
source /root/.bashrc 
cd /home/gpadmin

echo
echo "------------------------------"
echo "Set up gpadmin user & data dirs"
echo "------------------------------"
echo
gpdb_src/concourse/scripts/setup_gpadmin_user.bash

mkdir /gpmaster /gpdata1 /gpdata2
chown gpadmin:gpadmin /gpmaster
chown gpadmin:gpadmin /gpdata1
chown gpadmin:gpadmin /gpdata2

echo
echo "------------------------------"
echo "Init system as gpadmin"
echo "------------------------------"
echo
su - gpadmin -c /spawn_scripts/supporting_scripts/gpadmin_commands.bash

