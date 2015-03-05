local beautiful = require("beautiful")
local awful = require("awful")

local awesome = {
   { "lock", lock_cmd },
   { "restart", awesome.restart },
   { "logout", awesome.quit }
}
local system = {
   { "reboot", 'systemctl reboot' },
   { "shutdown", 'systemctl poweroff' },
   { "hibernate", 'systemctl hibernate' }
}

local xrandr = {
   {"above", "xrandr --output LVDS --primary --output VGA-0 --above LVDS --preferred" },
   {"clone", "xrandr --output LVDS --primary --output VGA-0 --same-as LVDS --auto" },
   {"left-of", "xrandr --output LVDS --primary --output VGA-0 --left-of LVDS --preferred" },
   {"right-of", "xrandr --output LVDS --primary --output VGA-0 --right-of LVDS --preferred" },
   {"below", "xrandr --output LVDS --primary --output VGA-0 --below LVDS --preferred" },
   {"off", "xrandr --output HDMI-0 --off --output VGA-0 --off" }
}

local apps = {
   {"jabber", "psi" }, -- psi
--   {"irc", "urxvtc -name weechat -e weechat-curses" },
   {"irc", "konversation" },
--   {"news", "urxvtc -name slrn -e slrn" },
   {"mail", "thunderbird" },
   {"files", "dolphin" },
   {"music", "clementine"},
   {"torrent", "transmission-qt"}
}

local menu = {
   {"apps",  apps },
   {"open terminal", "konsole" },
   {"firefox", "firefox -P default", "/usr/share/icons/hicolor/48x48/apps/firefox.png" },
   {"aurora", "/opt/firefox-aurora/firefox -P test --new-instance" },
   {"chromium", "chromium" },
   {"pavucontrol", "pavucontrol"},
   {"xrandr", xrandr },
   {"system", system },
   {"awesome", awesome, beautiful.awesome_icon }
}

mymainmenu = awful.menu({ items = menu })
