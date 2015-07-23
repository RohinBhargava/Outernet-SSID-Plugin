#!/bin/sh

rm /mnt/data/.ssid/ssid
echo $1 > /mnt/data/.ssid/ssid
if [ "$3" -eq "1" ]; then
   sed -i '3s/ssid=.*/ssid='$1'/g' /opt/orx/hostapd.conf
fi
$2 restart
