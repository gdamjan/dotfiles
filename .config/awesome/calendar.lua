local calendar = nil
local offset = 0

function remove_calendar()
    if calendar ~= nil then
        naughty.destroy(calendar)
        calendar = nil
        offset = 0
    end
end

function add_calendar(inc_offset)
    local save_offset = offset
    remove_calendar()
    offset = save_offset + inc_offset
    local datespec = os.date("*t")
    datespec = datespec.year * 12 + datespec.month - 1 + offset
    datespec = (datespec % 12 + 1) .. " " .. math.floor(datespec / 12)
    local cal = awful.util.pread("cal -m " .. datespec)
    calendar = naughty.notify({
        text = cal,
        font = "DejaVu Sans Mono",
        timeout = 0, hover_timeout = 0,
        position = "bottom_right",
        border_width = 6
    })
end

function toggle_calendar(inc_offset)
    if calendar ~= nil then
        remove_calendar()
    else
        add_calendar(inc_offset)
    end
end

-- change clockbox for your clock widget (e.g. mytextbox)
mytextclock:buttons(awful.util.table.join(
    awful.button({ }, 1, function()
        toggle_calendar(0)
    end),
    awful.button({ }, 4, function()
        add_calendar(1)
    end),
    awful.button({ }, 5, function()
        add_calendar(-1)
    end)
))

--[[
mytextclock:add_signal("mouse::enter", 
    function()
        add_calendar(0)
    end
)
mytextclock:add_signal("mouse::leave", remove_calendar)
--]]
