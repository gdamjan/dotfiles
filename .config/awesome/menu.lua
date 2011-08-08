myawesomemenu = {
   { "lock", "slock" },
   { "restart", awesome.restart },
   { "logout", awesome.quit },
   { "reboot", 'gksu "shutdown -r now"' },
   { "shutdown", 'gksu "shutdown -h now"' },
   { "hibernate", "gksu /usr/sbin/hibernate" }
}

local xrandr = {
   {"clone", "xrandr --output LVDS1 --primary --output VGA1 --same-as LVDS1 --auto" },
   {"left-of", "xrandr --output LVDS1 --primary --output VGA1 --left-of LVDS1 --preferred" },
   {"right-of", "xrandr --output LVDS1 --primary --output VGA1 --right-of LVDS1 --preferred" },
   {"above", "xrandr --output LVDS1 --primary --output VGA1 --above LVDS1 --preferred" },
   {"below", "xrandr --output LVDS1 --primary --output VGA1 --below LVDS1 --preferred" },
   {"off", "xrandr --output VGA1 --off" }
}

myappsmenu = {
   {"Psi", "psi" },
   {"Kmail", "kmail" },
   {"Knode", "knode" },
   {"Arduino", "/opt/arduino/arduino" },
   {"Konversation", "konversation" },
   {"Dolphin", "dolphin" },
   {"Clementine", "clementine"},
   {"Treeline", "./my-python/bin/treeline"}
}

mymenu = {
   {"apps",  myappsmenu },
   {"open terminal", terminal },
   {"chromium", "chromium" },
   {"firefox", "/opt/firefox/firefox -P test -no-remote", "/opt/firefox/icons/mozicon128.png" },
   {"firefox guest", "/opt/firefox-3.6/firefox -P guest -no-remote" },
   {"xrandr", xrandr },
   {"awesome", myawesomemenu, beautiful.awesome_icon }
}

mymainmenu = awful.menu.new({ items = mymenu })
