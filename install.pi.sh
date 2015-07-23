cp -r .ssid /mnt/data
cp -r ssid /usr/lib/python2.7/site-packages/librarian/plugins
cp /usr/lib/python2.7/site-packages/librarian/librarian.ini librarian.ini.bak
cp librarian.ini.pi /usr/lib/python2.7/site-packages/librarian/librarian.ini
/etc/init.d/S91librarian restart
