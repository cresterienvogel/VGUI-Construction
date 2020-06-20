construction = construction or {}
construction.Data = construction.Data or {}

function construction.Register(name, tbl)
    construction.Data[name] = tbl
end

function c_Child(pnl, n)
    if isstring(n) then
        for _, pan in pairs(pnl:GetChildren()) do
            if pan.Name == n then
                return pan
            end
        end
    end
    return pnl.children[n]
end

function construction.Create(tbl, pan)
    tbl = construction.Data[tbl] or tbl
    local elm
	for _, opt in pairs(tbl) do
        elm = pan and vgui.Create(opt.VGUI, pan) or vgui.Create(opt.VGUI)
        if opt.Name then    
            elm.Name = opt.Name
        end

        if opt.VGUI == "DFrame" then
            elm:SetDraggable(false)
            elm:SetMouseInputEnabled(false)
            elm:SetKeyBoardInputEnabled(false)
        end

        if opt.Title then
            elm:SetTitle(opt.Title)
        end

        if opt.Dock then
            elm:Dock(opt.Dock)
        end

        if opt.DockMargin then
            elm:DockMargin(unpack(opt.DockMargin))
        end
        
        if opt.DockPadding then
            elm:DockPadding(unpack(opt.DockPadding))
        end

        if opt.Wide then
            elm:SetWide(opt.Wide)
        end
        
		if opt.Tall then
			elm:SetTall(opt.Tall)
        end

        if opt.Size then
            elm:SetSize(unpack(opt.Size))
        end
        
        if opt.Center then
            elm:Center()
        end

        if opt.Alignment then
            elm:SetContentAlignment(opt.Alignment)
        end

        if opt.MakePopup then
            elm:MakePopup()
        end

        if opt.SetMouseInputEnabled then
            elm:SetMouseInputEnabled(opt.SetMouseInputEnabled)
        end

        if opt.SetKeyBoardInputEnabled then
            elm:SetKeyBoardInputEnabled(opt.SetKeyBoardInputEnabled)
        end

        if opt.SetDraggable then
            elm:SetDraggable(opt.SetDraggable)
        end

        if opt.ShowCloseButton then
            elm:ShowCloseButton(opt.ShowCloseButton)
        end

        if opt.SetSizable then
            elm:SetSizable(opt.SetSizable)
        end

        if opt.Text then
            elm:SetText(opt.Text)
        end

        if opt.Font then
            elm:SetFont(opt.Font)
        end

        if opt.Color then
            elm:SetColor(opt.Color)
        end

        if opt.OnRemove then
            elm.OnRemove = opt.OnRemove
        end

        if opt.OnClose then
            elm.OnClose = opt.OnClose
        end

        if opt.Paint then
            elm.Paint = opt.Paint
        end

        if opt.DoClick then
            elm.DoClick = opt.DoClick
        end

        if opt.Children then
            elm.children = elm.children or {}
            local child = construction.Create(opt.Children, elm)
            elm.children[#elm.children + 1] = child
        end
    end
    return elm
end
