<%inherit file="_dashboard_section.tpl"/>

<form action="${i18n_url('plugins:ssid:changed')}" method="GET" class="inline" help="Change the wireless access point identifier (SSID)">
  <input type="text" placeholder="SSID" name="name">
  <button text="Save">${_('Change!')}</button>
<form>
