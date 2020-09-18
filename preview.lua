construction.Register("preview", {
	[1] = {
		type = "DFrame",
		init = function(pnl)
			pnl:SetTitle("TEST FRAME")
			pnl:SetSize(300, 300)
			pnl:Center()
			pnl:MakePopup()
		end,
		children = {
			[1] = {
				type = "DButton",
				init = function(pnl)
					pnl:Dock(LEFT)
					pnl:SetText("LEFT")
				end
			},
			[2] = {
				type = "DButton",
				init = function(pnl)
					pnl:Dock(RIGHT)
					pnl:SetText("RIGHT")
				end
			},
			[3] = {
				type = "DPanel",
				init = function(pnl)
					pnl:Dock(FILL)
					pnl.fortest = "FOR TEST"
				end,
				children = {
					[1] = {
						type = "DButton",
						init = function(pnl, parent)
							pnl:SetText("CENTER, PARENT IS " .. parent.fortest)
							pnl:Dock(FILL)
						end
					}
				}
			}
		}
	}
})

concommand.Add("construction_preview", function()
    local fr = construction.Create("preview")
    fr:SetSize(fr:GetWide() * 2, fr:GetTall() * 2)
    fr:Center()
end)
