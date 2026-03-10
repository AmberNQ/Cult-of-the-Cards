local config = SMODS.current_mod.config

SMODS.current_mod.config_tab = function()
    --[[local icon = Sprite( G.ROOM.T.x,G.ROOM.T.y,G.CARD_W*.75,G.CARD_H*.75,nil,G.P_CENTERS.cotc_iconalt ) 
    icon.no_ui = true]]

    return {
        n = G.UIT.ROOT, config = {
            r = 0.1, align = "tm", padding = 0.2, colour = G.C.BLACK 
        }, nodes = {
	        --[[{ n = G.UIT.C, config = {
                align = "cm",
                padding = 0.1
            }, nodes = {
		        { n = G.UIT.O, config = {
                    object = icon
                } }
            } },]]
            { n = G.UIT.C, config = {
                align = "cm",
                padding = 0.1
            }, nodes = {
		        create_toggle( {
	                label = "Woolhaven Content",
                    ref_table = config,
	                ref_value = "dlc_toggle",
                    info = {
                        "Answer the Cold Mother's call..."
                    }
		        } )
	        } }
        }
    }
end

--[[function ellejokers.puritan_sprite_update()
	for i, v in ipairs(ellejokers.puritan.cards) do
		if ellejokers.puritan.atlases[G.P_CENTERS[v].atlas] then
			G.P_CENTERS[v].pos.y = ellejokers.mod_data.config.puritan and 1 or 0
		end
	end
end]]