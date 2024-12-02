hs.application.enableSpotlightForNameSearches(true)

local function launchOrActivateApp(appName, bundleID)
  local app = hs.application.find(appName)

  if app then
    app:activate()
  else
    hs.execute("open -b " .. bundleID)
  end
end

local appMappings = {
  {"1", "1Password 7", "com.agilebits.onepassword7"},
  {"a", "Cisco Secure Client", "com.cisco.anyconnect.gui"},
  {"b", "Brave Browser", "com.brave.Browser"},
  {"c", "Google Chrome", "com.google.Chrome"},
  {"d", "TickTick", "com.ticktick.TickTickMac"},
  {"e", "Visual Studio Code", "com.microsoft.VSCode"},
  {"f", "Finder", "com.apple.finder"},
  {"i", "iTerm2", "com.googlecode.iterm2"},
  {"m", "Activity Monitor", "com.apple.ActivityMonitor"},
  {"p", "Enpass", "com.sinew.Enpass"},
  {"q", "Quiver", "com.happenapps.Quiver"},
  {"r", "Reeder", "com.reederapp.rkit2.mac"},
  {"s", "Safari", "com.apple.Safari"},
  {"t", "Microsoft Teams", "com.microsoft.Teams"},
--  {"v", "Viber", "com.viber.osx"},
  {"v", "Vivaldi", "com.vivaldi.Vivaldi"},
  {"x", "Firefox", "org.mozilla.firefox"},
  {"z", "Zoom", "us.zoom.xos"},
}

table.sort(appMappings, function(a, b) return a[1] < b[1] end)

for _, mapping in ipairs(appMappings) do
  local hotkey, appName, bundleID = table.unpack(mapping)
  hs.hotkey.bind({"alt"}, hotkey, function()
    launchOrActivateApp(appName, bundleID)
  end)
end
