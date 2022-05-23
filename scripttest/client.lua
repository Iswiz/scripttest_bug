

local MainMenu = RageUI.CreateMenu("Title", "SUBTITLE");


function RageUI.PoolMenus:Example()
	SubMenu:IsVisible(function(Items)
		
		for k, v in pairs(Shops.Nourriture) do
		Items:AddButton(v.Label, nil, { RightLabel = "~g~" ..v.Price.."$" }, function(onSelected)
			if (onSelected) then 
				print ("salut")
		 	end
		end)
	end
	end, function()
    end)
end

Keys.Register("E", "E", "Test", function()
 	RageUI.Visible(MainMenu, not RageUI.Visible(MainMenu))
end)