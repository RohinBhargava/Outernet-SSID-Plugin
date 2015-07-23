"""
plugin.py: ssid plugin

Change the identifier of the device on dashboard.

Copyright 2014-2015, Outernet Inc.
Some rights reserved.

This software is free software licensed under the terms of GPLv3. See COPYING
file that comes with the source code, or http://www.gnu.org/licenses/gpl.txt.
"""

from bottle import request
from bottle_utils.i18n import lazy_gettext as _, i18n_url

from ..dashboard import DashboardPlugin
from ...utils.template import view

import subprocess, os

@view('ssid/changed_results', error=None, name=None)
def exec_command():
    name = request.query.name
    device = request.query.device
    reciever_name = "Outernet"
    number = 0
    legacy_flag = 0

    if 'orxpi' in device:
        number = 81
	legacy_flag = 1

    elif 'l' in device:
        number = 45
	legacy_flag = 2

    if name != '' and name != None and legacy_flag != 0 and number != 0:
        reciever_name += '-' + name
        try:
            subprocess.call(['/mnt/data/.ssid/ssid.sh %s /etc/init.d/S%dhostapd %d'%(reciever_name, number, legacy_flag)], shell=True)
        except subprocess.CalledProcessError as err:
            return dict(error=err.message)
        return dict(name=reciever_name)
    else:
        return dict(error='Something went wrong. Please try again. If the problem persists, please check your device name or contact your distributor.')

def install(app, route):
    route(('changed', exec_command, 'GET', '', {}))


class Dashboard(DashboardPlugin):
    # Translators, used as dashboard section title
    heading = _('Device identifier')
    name = 'ssid'
