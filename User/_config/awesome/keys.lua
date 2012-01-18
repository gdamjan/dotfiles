clientkeys = awful.util.table.join(clientkeys,
    awful.key({ modkey }, "F4",  function (c) c:kill()               end),
    awful.key({ modkey }, "d",   function(c)
        awful.client.dockable.set(c, not awful.client.dockable.get(c))
    end),
    awful.key({ modkey, "Ctrl" }, "i",   function (c)
            local string = ""
            if c.class then
                string = string .. "Class: " .. c.class
            end
            if c.instance then
                string = string .. " Instance: " .. c.instance
            end
            if c.role then
                string = string .. " Role: " .. c.role
            end
            if c.name then
                string = string .. " Name: " .. c.name
            end
            mypromptbox[mouse.screen].widget.text = string
        end)
)

globalkeys = awful.util.table.join(globalkeys,
      awful.key({ modkey }, "z", function () awful.util.spawn(lock_cmd) end),
      awful.key({ modkey }, "Menu", function () mymainmenu:show({keygrabber=true}) end),
      awful.key({  }, "XF86Back", function () awful.client.focus.byidx(-1); client.focus:raise() end),
      awful.key({  }, "XF86Forward", function () awful.client.focus.byidx(1);  client.focus:raise() end),
      awful.key({ modkey }, "XF86Back", awful.tag.viewprev),
      awful.key({ modkey }, "XF86Forward", awful.tag.viewnext),
      awful.key({ modkey }, "F12", function ()
            active_tag = awful.tag.selected()
                for i, c in pairs(active_tag:clients()) do
                c.minimized = not c.minimized
            end
        end),
      awful.key({ modkey }, "\\", function ()
            awful.prompt.run({ prompt = "Client name: " },
            mypromptbox[mouse.screen].widget,
            function (name)
                local clis = find_clients(name)
                if clis then
                    awful.tag.viewonly(clis[1]:tags()[1])
                    client.focus = clis[1]
                end
            end, nil, nil)
        end),
      awful.key({ modkey }, "F9", function ()
            root.fake_input("button_press", 4)
            root.fake_input("button_release", 4)
        end),
      awful.key({ modkey }, "F10", function ()
            root.fake_input("button_press", 5)
            root.fake_input("button_release", 5)
        end)
)

root.keys(globalkeys)
