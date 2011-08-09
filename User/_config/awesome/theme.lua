---------------------------
-- Default awesome theme --
---------------------------

theme = {}
confdir = awful.util.getdir("config")

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "nitrogen --restore" }

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are another variables sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- Example:
--taglist_bg_focus = #ff0000

-- Display the taglist squares

theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"

-- Variables set for theming menu
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height   = "15"
theme.menu_width    = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--bg_widget    = #cc0000

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"


-- Taglist squares (4x14 pixels, zenburn colors)
theme.taglist_squares       = "true"
theme.taglist_squares_sel   = confdir .. "/icons/taglist/squarefz.png"
theme.taglist_squares_unsel = confdir .. "/icons/taglist/squareza.png"

-- Statusbar icons for window management layouts (14x14 pixels, zenburn colors)
theme.layout_tile       = confdir .. "/icons/layouts/tile.png"
theme.layout_tileleft   = confdir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom = confdir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop    = confdir .. "/icons/layouts/tiletop.png"
theme.layout_fairv      = confdir .. "/icons/layouts/fairv.png"
theme.layout_fairh      = confdir .. "/icons/layouts/fairh.png"
theme.layout_spiral     = confdir .. "/icons/layouts/spiral.png"
theme.layout_dwindle    = confdir .. "/icons/layouts/dwindle.png"
theme.layout_max        = confdir .. "/icons/layouts/max.png"
theme.layout_fullscreen = confdir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier  = confdir .. "/icons/layouts/magnifier.png"
theme.layout_floating   = confdir .. "/icons/layouts/floating.png"

-- Widget icons (from dzen, zenburn colors)
theme.widget_cpu    = confdir .. "/icons/cpu.png"
theme.widget_bat    = confdir .. "/icons/bat.png"
theme.widget_mem    = confdir .. "/icons/mem.png"
theme.widget_fs     = confdir .. "/icons/disk.png"
theme.widget_net    = confdir .. "/icons/down.png"
theme.widget_netup  = confdir .. "/icons/up.png"
theme.widget_mail   = confdir .. "/icons/mail.png"
theme.widget_vol    = confdir .. "/icons/vol.png"
theme.widget_org    = confdir .. "/icons/cal.png"
theme.widget_date   = confdir .. "/icons/time.png"
theme.widget_crypto = confdir .. "/icons/crypto.png"

-- Titlebar icons (17x17 pixels, zenburn colors)
--
-- Close
theme.titlebar_close_button_focus  = confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = confdir .. "/icons/titlebar/close_normal.png"
-- On top
theme.titlebar_ontop_button_focus_active    = confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = confdir .. "/icons/titlebar/ontop_normal_inactive.png"
-- Sticky
theme.titlebar_sticky_button_focus_active    = confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = confdir .. "/icons/titlebar/sticky_normal_inactive.png"
-- Floating
theme.titlebar_floating_button_focus_active    = confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = confdir .. "/icons/titlebar/floating_normal_inactive.png"
-- Maximized
theme.titlebar_maximized_button_focus_active    = confdir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = confdir .. "/icons/titlebar/maximized_normal_inactive.png"


return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
