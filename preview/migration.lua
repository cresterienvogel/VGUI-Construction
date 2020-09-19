local migration = {
	[1] = {
		type = "DFrame",
		init = function(p)
			p:SetTitle("Migration Preview")
			p:SetSize(225, 150)
			p:Center()
			p:MakePopup()
		end,
		children = {
			[1] = {
				type = "DScrollPanel",
				init = function(p)
					p:Dock(FILL)
				end,
				children = {}
			}
		}
	}
}

for i = 1, 12 do
	migration[1]["children"][1]["children"][i] = {
		type = "DButton",
		init = function(p)
			p:Dock(TOP)
			p:SetText("Button #" .. i)
		end,
	}
end

concommand.Add("construction_preview_migration", function() 
	construction.Create(migration)
end)