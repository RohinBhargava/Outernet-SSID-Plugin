<%inherit file="_dashboard_section.tpl"/>

<form action="${i18n_url('plugins:ssid:changed')}" method="GET" class="inline">
  <input type="text" size="35" placeholder="Change your device's unique identifier!" name="name">
  <button>${_('Change!')}</button>
  <input type="hidden" name="device" value=${app_version}>
<form>
