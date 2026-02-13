SMODS.current_mod.extra_tabs = function()
	return {
		label = localize("cotc_credits_label"),
		tab_definition_function = function()
			return {
				n = G.UIT.ROOT, config = { r = 0.5, align = "cm", padding = 0.2, colour = G.C.BLACK }, nodes = {
					{ n = G.UIT.R, config = { padding = 0, align = "cl" }, nodes = { 
						{ n = G.UIT.T, config = { text = localize("cotc_credits_developer"), shadow = true, scale = 0.6 } },
						{ n = G.UIT.T, config = { text = "Alpha N. Q.", shadow = true, scale = 0.6, colour = G.C.BLUE } } 
					} }, 
					--[[{ n = G.UIT.R, config = { padding = 0, align = "cl", scale = 0.5 }, nodes = {
						{ n = G.UIT.T, config = { text = localize("cotc_credits_programminghelp"), shadow = true, scale = 0.45 } },
						{ n = G.UIT.T, config = { text = "slimestuff.", shadow = true, scale = 0.45, colour = G.C.BLUE } } 
					} },
					{ n = G.UIT.R, config = { padding = 0, align = "cl", scale = 0.1 }, nodes = {
						{ n = G.UIT.T, config = { text = localize("cotc_credits_specialthanks"), shadow = true, scale = 0.45 } },
						{ n = G.UIT.T, config = { text = "Slyvie, xCred_64", shadow = true, scale = 0.45, colour = G.C.BLUE } } 
					} },]]
					{ n = G.UIT.R, config = { padding = 0.2, align = "cm" }, nodes = {
						UIBox_button{ minw = 3.85, colour = HEX("009DFF"), button = "alpha_bsky", label = {"BlueSky"} },
						UIBox_button{ minw = 3.85, colour = HEX("FF0000"), button = "alpha_youtube", label = {"YouTube"} },
						UIBox_button{ minw = 3.85, colour = HEX("334096"), button = "alpha_github", label = {"Github"} }
					} } 
				}
			}
		end
	}
end

SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 32,
    py = 32
}

cotc_badges = {
	["DW"] = function() return create_badge("Darkwood", HEX('FFEE70'), G.C.MONEY, 0.8 ) end,
	["AR"] = function() return create_badge("Anura", HEX('FF0000'), G.C.WHITE, 0.8 ) end,
	["AD"] = function() return create_badge("Anchordeep", HEX('45B5FF'), G.C.WHITE, 0.8 ) end,
	["SC"] = function() return create_badge("Silk Cradle", HEX('43524C'), G.C.EDITION, 0.8 ) end
}