echo Outernet > /mnt/persist/.ssid
cp -r ssid /usr/lib/python2.7/site-packages/librarian/plugins
cp /etc/init.d/S45hostapd S45hostapd.bak
cp S45hostapd /etc/init.d
cp /etc/librarian.ini librarian.ini.bak
vi librarian.ini
/etc/init.d/S90librarian restart
