awful.tag.setproperty(tags[primary_screen][3], "mwfact", 0.30) -- for IM
awful.tag.setproperty(tags[primary_screen][3], "layout", awful.layout.suit.tile) -- for IM

awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },

    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    { rule = { class = "URxvt" },
      properties = { tag = tags[primary_screen][1], border_width = 2, size_hints_honor = false } },
    { rule = { class = "XTerm" },
      properties = { tag = tags[primary_screen][1], border_width = 2, size_hints_honor = false } },
    -- IM
    { rule = { class = "^[pP]si$" },
      properties = { tag = tags[primary_screen][3] } },
    { rule = { class = "psi", role = "psimain" },
      properties = { floating = true } },

    { rule = { class = "Gajim.py" },
      properties = { tag   = tags[primary_screen][3] },
      callback = awful.client.setslave },
    { rule = { class = "Gajim.py", role = "roster" },
      properties = { tag = tags[primary_screen][3], floating = true, type = "dock" }},
     --      callback = function (c) c:swap(awful.client.getmaster()) end },

    { rule = { class = "Pidgin" },
      properties = { tag = tags[primary_screen][3] } },
    { rule = { class = "Skype" },
      properties = { tag = tags[primary_screen][3], floating = true } },
    { rule = { class = "Pidgin", role = "buddy_list" },
      properties = { floating = true } },
    -- FIREFOX
    { rule = { class = "Firefox" },
      properties = { tag = tags[primary_screen][2], border_width = 2, floating = true } },
    { rule = { class = "Firefox", instance = "Navigator", role = "browser" },
      properties = { floating = false, border_width = 0 } },
    --[[ Flash
    { rule = { class = "Firefox", instance = "firefox-bin", name = "Firefox" },
      properties = { floating = false, border_width = 0 } },
    ]]--
    { rule = { class = "Chromium", instance = "chromium" },
      properties = { tag = tags[primary_screen][2], border_width = 0,
            maximized_horizontal = true, maximized_vertical = true } },
    { rule = { class = "Chrome", instance = "chrome" },
      properties = { tag = tags[primary_screen][2], border_width = 0,
            maximized_horizontal = true, maximized_vertical = true } },

    { rule = { class = "Kmail" },
      properties = { tag = tags[primary_screen][4] } },
    { rule = { class = "Knode" },
      properties = { tag = tags[primary_screen][4] } },
    { rule = { class = "Konversation" },
      properties = { tag = tags[primary_screen][4] } },
    { rule = { class = "Sonata", role = "mainWindow" },
      properties = { tag = tags[primary_screen][5] } },
    { rule = { class = "Amarokapp" },
      properties = { tag = tags[primary_screen][5] } },
    { rule = { class = "Dolphin" },
      properties = { tag = tags[primary_screen][5] } },
    { rule = { class = "Smplayer" },
      properties = { tag = tags[primary_screen][5], floating = true } },
    { rule = { class = "MPlayer" },
      properties = { tag = tags[primary_screen][5], floating = true } },
    { rule = { name = "Event Tester" },
      properties = { floating = true, use_titlebar = true } },
    { rule = { class = "Xmag" },
      properties = { floating = true } },
    { rule = { class = "Wicd-client.py" },
      properties = { floating = true } },
    { rule = { class = "qemu.*" },
      properties = { floating = true } },
    { rule = { name = "Copying.*" },
      properties = { floating = true } },
}