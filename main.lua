--[[TO DO LIST

- Add Godhood achievement unlock							[🔃]

- Rebalance as necessary

----   IDEAS   ----

- Add a Knucklebones consumeable card
	- play a game of knucklebones against the current blind, if you win, adds X5 mult to your next hand.

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

-- File Indexes --

local misc = {
	"achievements",
	"config"
}

local jokers = {
    --"lamb",
	"amber"
}

local tarots = {
}

local blinds = {
	"leshy",
	"heket",
	"kallamar",
	"shamura",
	"narinder",
	"hagar",
	"marchosias",
	"yngya"
} 

-- File Loader --

for i, v in ipairs(jokers) do
	assert(SMODS.load_file("lua/jokers/"..v..".lua"))()
end

for i, v in ipairs(tarots) do
	assert(SMODS.load_file("lua/tarots/"..v..".lua"))()
end

for i, v in ipairs(blinds) do
	assert(SMODS.load_file("lua/blinds/"..v..".lua"))()
end

for i, v in ipairs(misc) do
	assert(SMODS.load_file("lua/misc/"..v..".lua"))()
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

-- Text Colours --

loc_colour('red')
G.ARGS.LOC_COLOURS['crimson'] = HEX('900000')

-- =====================ATLASES=====================

SMODS.Atlas{
    key = "cotc_splash_screen",
    path = "cotc_splash_sprite.png",
    px = 333,
    py = 216,
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