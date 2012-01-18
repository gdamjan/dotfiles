local awesome = {
   { "lock", lock_cmd },
   { "restart", awesome.restart },
   { "logout", awesome.quit }
}
local system = {
   { "reboot", 'gksu "shutdown -r now"' },
   { "shutdown", 'gksu "shutdown -h now"' },
   { "hibernate", "gksu /usr/sbin/hibernate" }
}

local xrandr = {
   {"above", "xrandr --output LVDS1 --primary --output VGA1 --above LVDS1 --preferred" },
   {"clone", "xrandr --output LVDS1 --primary --output VGA1 --same-as LVDS1 --auto" },
   {"left-of", "xrandr --output LVDS1 --primary --output VGA1 --left-of LVDS1 --preferred" },
   {"right-of", "xrandr --output LVDS1 --primary --output VGA1 --right-of LVDS1 --preferred" },
   {"below", "xrandr --output LVDS1 --primary --output VGA1 --below LVDS1 --preferred" },
   {"off", "xrandr --output VGA1 --off" }
}

local apps = {
   {"jabber", "pidgin" }, -- psi
--   {"irc", "urxvtc -name weechat -e weechat-curses" },
   {"irc", "konversation" },
   {"news", "urxvtc -name slrn -e slrn" },
   {"mail", "thunderbird" },
   {"files", "dolphin" },
   {"music", "clementine"},
}

local menu = {
   {"apps",  apps },
   {"open terminal", terminal },
   {"chromium", "chromium" },
   {"firefox", "firefox -P default", "/usr/share/icons/hicolor/48x48/apps/firefox.png" },
   {"firefox guest", "/opt/firefox/firefox -P guest -no-remote" },
   {"xrandr", xrandr },
   {"system", system },
   {"awesome", awesome, beautiful.awesome_icon }
}

mymainmenu = awful.menu.new({ items = menu })
