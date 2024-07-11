#!/bin/sh
STEWARD_VERSION=0.1

export PATH=/usr/lib/jvm/jdk-11.0.16.1+1/bin:$PATH
export PATH=/opt/grails-5.2.3/bin:$PATH

echo ""
echo "####"
echo "# Git Pull"
echo "####"
cd /var/Steward/Source/Steward
git pull

echo ""
echo "####"
echo "# Erstelle Deployment-File"
echo "####"
grails war
cd /var/Steward/webapp

echo ""
echo "####"
echo "# Stoppe Steward"
echo "####"
systemctl stop steward

echo ""
echo "####"
echo "# Kopiere bestehendes Log-File"
echo "####"
mv /var/log/steward/steward.log /var/log/steward/steward-`date +%Y.%m.%d-%T`.log
touch /var/log/steward/steward.log

echo ""
echo "####"
echo "# Deploy WEB-App"
echo "####"
rm -rf /var/Steward/webapp/*
unzip /var/Steward/Source/Steward/build/libs/Steward-${STEWARD_VERSION}.war
chown -R steward:steward /var/Steward/webapp/*

echo ""
echo "####"
echo "# Deploy Dokumenten-Templates"
echo "####"
rm /var/Verwaltung/Templates/*
cp /var/Steward/Source/Steward/templates/* /var/Verwaltung/Templates/

echo ""
echo "####"
echo "# Starte Steward"
echo "####"
systemctl start steward

echo ""
echo "####"
echo "# Fertig!!! Zeige LOG-File"
echo "####"
tail -f /var/log/steward/steward.log