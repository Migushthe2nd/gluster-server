#!/bin/bash

# install more packages
apt-get -y update \
    && apt-get -y install software-properties-common

# add latest glusterfs repo
add-apt-repository -y ppa:gluster/glusterfs-11

# install more packages
apt-get -y install attr psmisc glusterfs-server

# Clean up
apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*
