--[[
    Preview 1
]]

construction.Register("preview_1", {
    {
        VGUI = "DFrame",
        Title = "Construction preview #1",
        SetDraggable = true, -- now its not draggable by the default so you have to do it
        Size = {300, 300},
        Center = true,
        MakePopup = true,
        Children = {
            {
                VGUI = "DButton",
                Text = "That does nothing",
                Dock = FILL,
                DoClick = function()
                    print("ok a bit more of nothing")
                end
            }
        }
    }
})

concommand.Add("preview_1", function()
    construction.Create("preview_1")
end)

--[[
    Preview 2
]]

-- main panel
construction.Register("preview_2", {
    {
        VGUI = "DFrame",
        Title = "Construction preview #2",
        Size = {300, 500},
        Center = true,
        MakePopup = true,
        Children = {
            {
                Name = "scrollPnl",
                VGUI = "DScrollPanel",
                Dock = FILL
            }
        }
    }
})

-- button
construction.Register("preview_2_helper", {
    {
        VGUI = "DButton",
        Text = "Preview button",
        Dock = TOP,
        DockMargin = {4, 4, 4, 4}
    }
})

concommand.Add("preview_2", function()
    local fr = construction.Create("preview_2")
    for i = 1, 10 do
        local btn = construction.Create("preview_2_helper", c_Child(fr, "scrollPnl")) 
        -- we also could use number 1 in c_Child because scroll panel is the first

        if math.random(1, 2) == 2 then
            btn:SetText("changed")
        end
    end
end)
