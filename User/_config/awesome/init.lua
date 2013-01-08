tagnames = {"term", "web", "im", "comm", "xmedia"}
terminal = "urxvtc"
lock_cmd = "i3lock --dpms --color=222222"
os.setlocale(os.getenv('LANG'), 'all')

primary_screen = 1

local awful = require("awful")
local naughty = require("naughty")
naughty.config.defaults.screen = primary_screen
naughty.config.defaults.opacity = 0.8



function find_clients(name)
    if not name or name == "" then return end

    local clients = client.get(mouse.screen)
    local found_clis = {}
    if clients and #clients > 1 then
        for i, cli in ipairs(clients) do
            if cli.name:lower():find(name)
                or cli.class:lower():find(name)
                or cli.instance:lower():find(name) then
                table.insert(found_clis, cli)
            end
        end
        if #found_clis > 0 then return found_clis end
    end
end

function startup ()
    awful.util.spawn("killall conky", false)
    awful.util.spawn("killall xxkb", false)
    awful.util.spawn("xsetroot -cursor_name top_left_arrow", false)
    if screen.count() > 1 then
        awful.util.spawn("/usr/bin/conky -y 780", false)
    else
        awful.util.spawn("/usr/bin/conky", false) -- primary_screen?
    end
    awful.util.spawn("xxkb", false)
end
startup()
