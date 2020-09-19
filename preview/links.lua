concommand.Add("construction_preview_links", function() 
	construction.Create({
		{
			type = "DFrame",
			init = function(p)
				p:SetTitle("Link Menu")
				p:SetSize(ScrW() / 4, ScrH() / 4)
				p:Center()
				p:MakePopup()
			end,
			children = {
				{
					type = "DPropertySheet",
					init = function(p)
						p:Dock(FILL)
					end,
					children = {
						{
							type = "DPanel",
							init = function(p, _p)
								_p:AddSheet("My Links", p, "icon16/book_open.png")
							end,
							children = {
								{
									type = "DScrollPanel",
									init = function(p)
										p:Dock(FILL)
										p:DockMargin(2, 2, 2, 2)
									end,
									children = {
										{
											type = "DButton",
											init = function(p)
												p:SetText("Steam")
												p:Dock(TOP)
												p.DoClick = function()
													gui.OpenURL("https://steamcommunity.com/id/cresterienvogel/")
												end
											end,
										},
										{
											type = "DButton",
											init = function(p)
												p:SetText("GitHub")
												p:Dock(TOP)
												p.DoClick = function()
													gui.OpenURL("https://github.com/cresterienvogel")
												end
											end,
										}
									}
								}
							}
						},
						{
							type = "DPanel",
							init = function(p, _p)
								_p:AddSheet("Project Links", p, "icon16/book_addresses.png")
							end,
							children = {
								{
									type = "DScrollPanel",
									init = function(p)
										p:Dock(FILL)
										p:DockMargin(2, 2, 2, 2)
									end,
									children = {
										{
											type = "DButton",
											init = function(p)
												p:SetText("Website")
												p:Dock(TOP)
												p.DoClick = function()
													gui.OpenURL("https://xenpare.com/")
												end
											end,
										},
										{
											type = "DButton",
											init = function(p)
												p:SetText("Discord")
												p:Dock(TOP)
												p.DoClick = function()
													gui.OpenURL("https://discord.gg/mW5V9TY")
												end
											end,
										},
										{
											type = "DButton",
											init = function(p)
												p:SetText("Steam")
												p:Dock(TOP)
												p.DoClick = function()
													gui.OpenURL("https://steamcommunity.com/groups/xenpare")
												end
											end,
										}
									}
								}
							}
						}
					}
				}
			}
		}
	})
end)