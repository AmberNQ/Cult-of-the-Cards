--[[TO DO LIST

- Add Godhood achievement unlock							[🔃]

- Add Mystic Seller
	- pay 1 god tear ($100 if we cant add custom currency) for a random spectral card

- Add Relics (custom consumeable)

- Rebalance as necessary

----   IDEAS   ----

- Add a Knucklebones consumeable card
	- play a game of knucklebones against the current blind, if you win, adds X5 mult to your next hand.

- Add MultiplayerMod support, allowing for even more relics to be used between players.

---- BUG FIXES ----

- Nothing to do!! :D
]]

-- ====================META=DATA====================

-- Main Mod Tab --

SMODS.current_mod.custom_ui = function(mod_nodes)
	mod_nodes = EMPTY(mod_nodes)
	
	mod_nodes[#mod_nodes+1] = { n = G.UIT.C, config = {
		padding = 0.1
	}, nodes = {
		{ n = G.UIT.R, config = {
			align = "cm"
		}, nodes = {
			{ n = G.UIT.R, config = {
				r = 0.1,
				align = "cm",
				padding = 0.1,
				colour = G.ARGS.LOC_COLOURS.crimson
			}, nodes = {
				{ n = G.UIT.C, config = {
					r = 0.1,
					align = "cm",
					padding = 0.2,
					colour = G.C.BLACK
				}, nodes = {
					{ n = G.UIT.T, config = {
						text = "Cult of the Cards",
						scale = .75,
						colour = G.C.WHITE
					} }
				} }
			} }
		} },
		{ n = G.UIT.R, config = { align = "cm", }, nodes = {
			{ n = G.UIT.R, config = { align = "cm" }, nodes = {
				{ n = G.UIT.T, config = {
					text = "Praise the Lamb, conduit to great power, promised",
					scale = .3,
					colour = G.C.WHITE
				} },
			} },
			{ n = G.UIT.R, config = { align = "cm" }, nodes = {
				{ n = G.UIT.T, config = {
					text = "liberator of the One Who Waits below.",
					scale = .3,
					colour = G.C.WHITE
				} }
			} },
		} },
		{ n = G.UIT.R, config = { align = "cm" }, nodes = {
			{ n = G.UIT.C, config = {
				r = 0.1,
				align = "cm",
				padding = 0.1,
				colour = G.C.L_BLACK
			}, nodes = {
				{ n = G.UIT.R, config = { align = "cm" }, nodes = {
					{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_amber') } },
				} },
				{ n = G.UIT.R, config = { align = "cm" }, nodes = {
					{ n = G.UIT.T, config = { text = "Mod by ", scale = .4, colour = G.C.WHITE } },
					{ n = G.UIT.T, config = { text = "Amber N. Q.", scale = .4, colour = G.C.FILTER } }
				} }
			} }
		} }
	} }
end

-- Consumeable Initialization --

SMODS.ConsumableType{
	key = 'cotc_Relics',
    default = 'c_fool',
    primary_colour = HEX('266EB6'),
    secondary_colour = HEX('266EB6'),
    collection_rows = { 6, 6 },
    shop_rate = 1.5,

	inject_card = function(self, center)
		center.display_size = { w = 71, h = 71 }
	end
}

SMODS.UndiscoveredSprite {
	key = 'cotc_Relics',
	atlas = 'relic',
	pos = { x = 0, y = 11 },
	overlay_pos = { x = 1, y = 11 },	

	inject_card = function(self, center)
		center.display_size = { w = 71, h = 71 }
	end
}

-- File Indexes --

local file_groups = {
	"misc",
	"jokers",
	"tarots",
	"relics",
	"blinds"
}

local files = {
	misc = {
		"achievements",
		"vouchers",
		"editions",
		"config"
	},

	jokers = {
		--"lamb",
		"amber"
	},

	tarots = {

	},

	relics = {
		"beads",
		"mirror",
		"hair",
		"laplace",
		"balm",
	},

	blinds = {
		"leshy",
		"heket",
		"kallamar",
		"shamura",
		"narinder"
	}
}

local files_dlc = {
	misc = { "ach_dlc" },

	jokers = { },

	vouchers = { },

	tarots = { },

	relics = {
		"idol"
	},

	blinds = {
		"hagar",
		"marchosias",
		"yngya"
	}
}

-- File Loader --

for _, v in ipairs(file_groups) do
	for _, v2 in ipairs(files[v]) do
		assert(SMODS.load_file("lua/"..v.."/"..v2..".lua"))()
	end

	if SMODS.Mods["cultofcards"].config.dlc_toggle then
		for _, v2 in ipairs(files_dlc[v]) do
			assert(SMODS.load_file("lua/"..v.."/"..v2..".lua"))()
		end
	end
end


-- Title Screen Swirl --

local game_main_menu_ref = Game.main_menu
function Game:main_menu(...)
    local ret = game_main_menu_ref(self, ...)

    G.SPLASH_BACK:define_draw_steps({
        {
            shader = "splash", -- You can replace the shader altogether
            send = { {
				name = "time",
				ref_table = G.TIMERS,
				ref_value = "REAL_SHADER"
			}, {
				name = "vort_speed", val = 0.4
			}, {
				name = "colour_1",
				ref_table = G.ARGS.LOC_COLOURS,
				ref_value = "crimson"
			}, {
				name = "colour_2",
				ref_table = G.C,
				ref_value = "L_BLACK"
			}, {
				name = "colour_2",
				ref_table = G.ARGS.LOC_COLOURS,
				ref_value = "crimson"
			} }
        }
    })

    return ret
end

-- Custom Colours --

loc_colour('red')
G.ARGS.LOC_COLOURS['crimson'] = HEX('900000')

-- Text Prefix --

quote = '{C:inactive,s:0.7,E:1}'

-- =================ATLASES/SHADERS=================

SMODS.Atlas{
    key = "cotc_splash_screen",
    path = "splash_sprite.png",
    px = 333,
    py = 76,
}

SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 32,
    py = 32
}

SMODS.Atlas {
    key = "iconalt",
    path = "modicon_alt.png",
    px = 32,
    py = 32
}

SMODS.Atlas {
    key = "joker",
    path = "jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "voucher",
    path = "placeholder.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "relic",
    path = "relics.png",
    px = 71,
    py = 71
}

SMODS.Atlas {
    key = "blind",
    path = "blinds.png",
    px = 34,
	py = 34,
	atlas_table = 'ANIMATION_ATLAS',
	frames = 21
}

SMODS.Atlas {
    key = "achieve",
    path = "achievements.png",
    px = 66,
    py = 66
}

SMODS.Shader {
	key = "godly",
	path = "godly.fs"
}
-- ======================BADGES======================

cotc_badges = {
	DW = {
		text = "Darkwood",
		colour = HEX('007700')
	},
	AN = {
		text = "Anura",
		colour = HEX('FFAE00')
	},
	AD = {
		text = "Anchordeep",
		colour = HEX('0033FF')
	},
	SC = {
		text = "Silk Cradle",
		colour = HEX('550099')
	},
	WH = {
		text = "Woolhaven",
		colour = HEX('007BFF')
	},
	EF = {
		text = "Ewefall",
		colour = HEX('0095FF')
	},
	TR = {
		text = "The Rot",
		colour = HEX('990000')
	}
}