construction = construction or {}
construction.Data = construction.Data or {}

function construction.Register(name, tbl)
    construction.Data[name] = tbl
end

function construction.Create(tbl, pan)
	tbl = construction.Data[tbl] or tbl
	local elm
	for _, params in pairs(tbl) do
		elm = pan and vgui.Create(params.type, pan) or vgui.Create(params.type)
		params.init(elm, elm:GetParent())
		if params.children then
			construction.Create(params.children, elm)
		end
	end
	return elm
end
