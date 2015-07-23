cp -r .ssid /mnt/data
cp -r ssid /usr/lib/python2.7/site-packages/librarian/plugins
cp S45hostapd /etc/init.d
cp librarian.ini /etc
/etc/init.d/S90librarian restart
