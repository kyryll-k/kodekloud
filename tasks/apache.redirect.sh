#!/bin/bash
PORT=8087 && SERVER=stapp01
echo "<VirtualHost *:$PORT> " >> /etc/httpd/conf/httpd.conf
echo "   ServerName $SERVER.stratos.xfusioncorp.com " >> /etc/httpd/conf/httpd.conf
echo "   ServerAlias $SERVER.stratos.xfusioncorp.com " >> /etc/httpd/conf/httpd.conf
echo "  "  >> /etc/httpd/conf/httpd.conf
echo "   Redirect permanent / http://www.$SERVER.stratos.xfusioncorp.com:$PORT/ " >> /etc/httpd/conf/httpd.conf
echo "</VirtualHost> " >> /etc/httpd/conf/httpd.conf
echo "  "  >> /etc/httpd/conf/httpd.conf
echo "<VirtualHost *:$PORT> " >> /etc/httpd/conf/httpd.conf
echo "  ServerName www.$SERVER.stratos.xfusioncorp.com " >> /etc/httpd/conf/httpd.conf
echo "  ServerAlias www.$SERVER.stratos.xfusioncorp.com " >> /etc/httpd/conf/httpd.conf
echo "  "  >> /etc/httpd/conf/httpd.conf
echo "  Redirect /blog/ http://www.$SERVER.stratos.xfusioncorp.com:$PORT/news/ " >> /etc/httpd/conf/httpd.conf
echo "</VirtualHost> " >> /etc/httpd/conf/httpd.conf
