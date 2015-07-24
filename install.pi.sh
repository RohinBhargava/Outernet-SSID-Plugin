cp -r ssid /usr/lib/python2.7/site-packages/librarian/plugins
cp /opt/orx/librarian.ini librarian.ini.opt.orx.bak
cp /usr/lib/python2.7/site-packages/librarian/librarian.ini librarian.ini.librarian.bak
vi /opt/orx/librarian.ini
vi /usr/lib/python2.7/site-packages/librarian/librarian.ini
/etc/init.d/S91librarian restart
