myawesomemenu = {
   { "lock", "slock" },
   { "restart", awesome.restart },
   { "logout", awesome.quit },
   { "reboot", 'gksu "shutdown -r now"' },
   { "shutdown", 'gksu "shutdown -h now"' },
   { "hibernate", "gksu /usr/sbin/hibernate" }
}

myxrandrmenu = {
   {"clone", "xrandr --output VGA1 --same-as LVDS1 --auto" },
   {"left-of", "xrandr --output VGA1 --left-of LVDS1 --preferred" },
   {"right-of", "xrandr --output VGA1 --right-of LVDS1 --preferred" },
   {"above", "xrandr --output VGA1 --above LVDS1 --preferred" },
   {"below", "xrandr --output VGA1 --below LVDS1 --preferred" },
   {"off", "xrandr --output VGA1 --off" }
}

myappsmenu = {
   {"Psi", "psi" },
   {"Kmail", "kmail" },
   {"Knode", "knode" },
   {"Arduino", "/opt/arduino/arduino" },
   {"Konversation", "konversation" },
   {"Dolphin", "dolphin" },
   {"Amarok", "amarok"},
   {"Treeline", "./my-python/bin/treeline"}
}

mymenu = {
   {"apps",  myappsmenu },
   {"open terminal", terminal },
   {"chromium", "chromium" },
   {"firefox", "./firefox/firefox -P test -no-remote", "/opt/firefox/icons/mozicon128.png" },
   {"firefox guest", "/opt/firefox/firefox -P guest -no-remote" },
   {"xrandr", myxrandrmenu },
   {"awesome", myawesomemenu, beautiful.awesome_icon }
}

mymainmenu = awful.menu.new({ items = mymenu })
