<%inherit file="_dashboard_section.tpl"/>

<form action="${i18n_url('plugins:ssid:changed')}" method="GET" class="inline">
  Change the wireless access point identifier (SSID)<br>
  <input type="text" placeholder="SSID" name="name">
  <button value="Save">${_('Change!')}</button>
<form>
