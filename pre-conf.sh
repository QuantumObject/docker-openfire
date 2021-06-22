#!/bin/bash
set -e

#installing openfire
wget -O openfire.deb http://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.6.4_all.deb
dpkg -i openfire.deb
rm openfire.deb

#installing sparkweb
wget -O sparkweb.tar.gz http://www.igniterealtime.org/downloadServlet?filename=sparkweb/sparkweb_0_9_0.tar.gz
tar -xvf sparkweb.tar.gz
rm sparkweb.tar.gz
mv sparkweb /usr/share/openfire/plugins/admin/webapp/
mv /usr/share/openfire/plugins/admin/webapp/sparkweb/SparkWeb.html  /usr/share/openfire/plugins/admin/webapp/sparkweb/index.html
 
 #to clear some data before saving this layer ...a docker image
 apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
