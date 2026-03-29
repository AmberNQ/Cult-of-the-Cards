--[[TO DO LIST

- Add Godhood achievement unlock							[🔃]

- Add God Tears (custom currency)

- Add Mystic Seller
	- pay 1 god tear ($100 if we cant add custom currency) for a random spectral card

- Rebalance as necessary

- Add Localizations(NOT A PRIORITY)

- Add Edition Shaders(waiting on Elle to work on that, thank you so much pookie TwT)

----   IDEAS   ----

- Knucklebones consumeable card
	- play a game of knucklebones against the current blind, if you win, adds X5 mult to your next hand.

- MultiplayerMod support, allowing for even more relics to be used between players.

- Shroud of the Healer
	- Reveals all blinds of every ante in run??

- Ritual of Resurrection Voucher
	- bring a sold/destroyed card back to your deck.

- Full CardSleeves support(maybe on this one)

---- BUG FIXES ----

- Leshy changes the card but they still score the same.
]]

-- ====================META=DATA====================

-- Main Mod Tab --

SMODS.current_mod.custom_ui = function(mod_nodes)
	mod_nodes = EMPTY(mod_nodes)

	mod_nodes[#mod_nodes+1] = {n = G.UIT.C, config = {padding = 0.1}, nodes = {
		{ n = G.UIT.R, config = { align = "cm" }, nodes = {									--Mod Title
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
		{ n = G.UIT.R, config = { align = "cm" }, nodes = { 								--Flavour Text
			{ n = G.UIT.R, config = { align = "cm" }, nodes = {
				{n = G.UIT.T, config = { text = "Praise the Lamb, conduit to great power, promised", scale = .3, colour = G.C.WHITE} }
			} },
			{ n = G.UIT.R, config = { align = "cm" }, nodes = {
				{n = G.UIT.T, config = { text = "liberator of the One Who Waits below.", scale = .3, colour = G.C.WHITE} }
			} }
		} },
		{ n = G.UIT.R, config = { align = "cm" }, nodes = {									--Main Credits
			{ n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = {				--Left Column
				{ n = G.UIT.R, config = { align = "cm" }, nodes = {
					{ n = G.UIT.R, config = {
						emboss = 0.05,
						r = 0.1,
						minw = 5.5,
						minh = 2.4,
						align = "cm",
						padding = 0.1,
						colour = G.C.L_BLACK 
					}, nodes = {
						{ n = G.UIT.C, config = { align = "tl" }, nodes = {					--Left Cards
							{ n = G.UIT.R, nodes = {
								{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_amber') } }
							} },
							{ n = G.UIT.R, nodes = {
								{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_sargeant') } }
							} }
						} },
						{ n = G.UIT.C, config = { padding = 0.1, minw = 2 }, nodes = {		--Descriptions
							{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.65, w = 0.1 } } } },
							{ n = G.UIT.R, config = { align = "cl"}, nodes = {
								{ n = G.UIT.T, config = { text = "Mod by ", scale = .4, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "Amber N. Q.", scale = .4, colour = G.C.FILTER } }
							} },
							{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.5, w = 0.1 } } } },
							--[[{ n = G.UIT.R, config = { align = "cr" }, nodes = {
								{ n = G.UIT.T, config = { text = "Shaders by ", scale = .4, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "ellestuff.", scale = .4, colour = G.ARGS.LOC_COLOURS.elle } }
							} },]]
							{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.1, w = 0.1 } } } },
							{ n = G.UIT.R, config = { align = "cm"}, nodes = {
								{ n = G.UIT.T, config = { text = "Assistant artist:", scale = .4, colour = G.C.WHITE } }
							} },
							{ n = G.UIT.R, config = { align = "cl"}, nodes = {
								{ n = G.UIT.T, config = { text = "Sargeant Death", scale = .4, colour = G.C.UI.TEXT_INACTIVE } }
							} },
						} },
						--[[{ n = G.UIT.C, config = { align = "tr" }, nodes = {				--Right Cards
							{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 1, w = 0.1 } } } },
							{ n = G.UIT.R, nodes = {
								{ n = G.UIT.O, config = { object = slimeutils.create_display_card("j_cotc_elle") } }
							} }
						} }]]
					} },
				} },
			} },
			--[[{ n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = {			--Middle Column (not for show yet)
				{ n = G.UIT.R, config = { align = "cm" }, nodes = {
					{ n = G.UIT.R, config = {
						emboss = 0.05,
						r = 0.1,
						minw = 2.5,
						minh = 5.05,
						align = "cm",
						padding = 0.1,
						colour = G.C.L_BLACK
					}, nodes = {
						{ n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 3.5 }, nodes = {
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "Localisations:", scale = .5, colour = G.C.WHITE } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "DE: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "ES (Mexico): ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "ES (Spain): ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "FR: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "ID: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "IT: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "JA: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "KO: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "NL: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "PL: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "PT: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "RU: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "CN: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "zh-CN: ", scale = .3, colour = G.C.WHITE } },
								{ n = G.UIT.T, config = { text = "N/A", scale = .3, colour = G.C.GREEN } }
							} },
						} }
					} }
				} }
			} },]]
			{ n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = {				--Right Column
				{ n = G.UIT.R, config = { align = "cm" }, nodes = {
					{ n = G.UIT.R, config = {
						emboss = 0.05,
						r = 0.1,
						minw = 2.5,
						minh = 5.05,
						align = "cm",
						padding = 0.1,
						colour = G.C.L_BLACK
					}, nodes = {
						{ n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 3.5 }, nodes = {
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "Original game by", scale = .5, colour = G.C.WHITE } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "Massive Monster", scale = .5, colour = G.C.RED } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = { 
								{ n = G.UIT.O, config = { object = slimeutils.create_display_card("j_cotc_massive") } } 
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "Thank you for making", scale = .4, colour = G.C.WHITE } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "a fantastic game and", scale = .4, colour = G.C.WHITE } }
							} },
							{ n = G.UIT.R, config = { align = "cm" }, nodes = {
								{ n = G.UIT.T, config = { text = "an even better story.", scale = .4, colour = G.C.WHITE } }
							} },
						} }
					} }
				} }
			} }
		} }
	} }
end

-- Custom Object Initialization --

--[[SMODS.ConsumableType{
	key = 'cotc_Tarots',
    primary_colour = HEX('E42727'),
    secondary_colour = HEX('E42727'),
    collection_rows = { 5, 5 },
    shop_rate = 2,
}]]

SMODS.ConsumableType{
	key = 'cotc_Relics',
    primary_colour = HEX('266EB6'),
    secondary_colour = HEX('266EB6'),
    collection_rows = { 6, 6 },
    shop_rate = 1.5,
}

SMODS.UndiscoveredSprite {
	key = 'cotc_Relics',
	atlas = 'relic',
	pos = { x = 1, y = 11 },
}

-- File Indexes --

local file_groups = {
	"src",
	"jokers",
	"tarots",
	"relics",
	"blinds"
}

local files = {
	src = {
		"credits",
		"achievements",
		"decks",
		"vouchers",
		"editions",
		--"boosters",
		"config"
	},

	jokers = {
		--"lamb",
	},

	tarots = {
		--"hearts"
	},

	relics = {
		--[BLESSING AND DAMNATION RELICS]
		--"beads",
		--"mirror",
		--"hair",
		"laplace",
		--"balm",
		--"ala",
		--"exorcist",
		--"aethrile",
		--"tears",

		--[BASIC RELICS]
		--"galvar",
		--"icegore_eye",
		--"slythor_eye",
		--"fervant",
		--"beak",
		--"icegore_toe",
		--"seal",
		--"slythor_tail",
		--"shoe",
		--"transmogricon",
		--"toenail",
		--"fingernail",
		--"shunrue",
		--"bomb",
		--"stihi",
		--"warracka",
		--"turua",
		--"nectar",
		
		--[CURSED RELICS]
		--"kephomite",
		--"scales",
		--"yaca",
		--"widow",
		--"laplace_coin",
		--"bones",
		--"tachach",
		--"starved",

		--[BISHOP RELICS]
		--"leshy",
		--"heket",
		--"kallamar",
		--"shamura",
		--"narinder",

		--[MULTIPLAYER RELICS]
		--"crow",
		--"ashes",
		--"hands",
		--"tooth",
		--"marbais"
		--"healer"				[CURRENTLY JUST A CONCEPT, WE ARE UNSURE IF THIS WILL EVER MAKE IT TO FINAL PRODUCTION]
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
	src = { "ach_dlc" },

	jokers = {
		--"joker"
	},

	vouchers = { },

	tarots = { },

	relics = {
		--[["idol",
		"first_din",
		"second_din",
		"amber",
		"pelt",
		"trapper",
		"unmoved",
		"husk",
		"cinderfolk_spine",
		"cinderfolk_eye",]]
	},

	blinds = {
		"hagar",
		--"marchosias",
		--"yngya"
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

-- Title Screen Customisation --

SMODS.current_mod.menu_cards = function()
    return {
		{ rank = 'Ace', suit = 'Hearts' },
        remove_original = true
    }
end

local game_main_menu_ref = Game.main_menu
function Game:main_menu(...)
    local ret = game_main_menu_ref(self, ...)

    G.SPLASH_BACK:define_draw_steps({
        { shader = "splash", send = { {
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
    } })
    return ret
end

-- Custom Colours --

loc_colour('red')
G.ARGS.LOC_COLOURS.crimson = HEX('900000')
G.ARGS.LOC_COLOURS.clauneck = HEX('E42727')
G.ARGS.LOC_COLOURS.chemach = HEX('266EB6')
G.ARGS.LOC_COLOURS.elle = HEX('FF53A9')

-- Text Prefix --

quote = '{C:inactive,s:0.7,E:1}'

-- =================ATLASES/SHADERS=================

SMODS.Atlas{
    key = "cotc_splash_screen",
    path = "splash_sprite.png",
    px = 333,
    py = 76,
}

local icon = "modicon"
if SMODS.Mods["cultofcards"].config.dlc_toggle then
	icon = "modicon_alt"
end

SMODS.Atlas {
    key = "modicon",
    path = icon..".png",
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
    key = "credits",
    path = "credits.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "placeholder",
    path = "placeholder.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "deck",
    path = "fleecedecks.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "voucher",
    path = "vouchers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "tarot",
    path = "tarots.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "relic",
    path = "relics.png",
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
    key = "sleeve",
    path = "fleecesleeves.png",
    px = 73,
    py = 95
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

-- ====================DECKSKINS====================

SMODS.Atlas {
	key = "cultskin_lc",
	path = "cultdeck_lc.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "cultskin_hc",
	path = "cultdeck_hc.png",
	px = 71,
	py = 95
}

SMODS.DeckSkin {
	key = "cultofcards_s",
	suit = "Spades",
	loc_txt = "Cult of the Cards",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King", "Ace" },
			display_ranks = {"Ace", "King", "Queen", "Jack" },
			atlas = "cotc_cultskin_lc",
			pos_style = 'deck'
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", "King", "Queen", "Jack"},
			atlas = "cotc_cultskin_hc",
			pos_style = 'deck',
			hc_default = true
		},
	},

	has_ds_card_ui = function(card, deckskin, palette) return true end,

	generate_ds_card_ui = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
		localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
		localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "Sargeant Death" }}
	end
}

SMODS.DeckSkin {
	key = "cultofcards_h",
	suit = "Hearts",
	loc_txt = "Cult of the Cards",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King", "Ace" },
			display_ranks = {"Ace", "King", "Queen", "Jack" },
			atlas = "cotc_cultskin_lc",
			pos_style = 'deck'
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", "King", "Queen", "Jack"},
			atlas = "cotc_cultskin_hc",
			pos_style = 'deck',
			hc_default = true
		},
	},

	has_ds_card_ui = function(card, deckskin, palette) return true end,

	generate_ds_card_ui = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
		localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
		localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "Sargeant Death" }}
	end
}

SMODS.DeckSkin {
	key = "cultofcards_c",
	suit = "Clubs",
	loc_txt = "Cult of the Cards",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King", "Ace" },
			display_ranks = {"Ace", "King", "Queen", "Jack" },
			atlas = "cotc_cultskin_lc",
			pos_style = 'deck'
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", "King", "Queen", "Jack"},
			atlas = "cotc_cultskin_hc",
			pos_style = 'deck',
			hc_default = true
		},
	},

	has_ds_card_ui = function(card, deckskin, palette) return true end,

	generate_ds_card_ui = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
		localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
		localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "Sargeant Death" }}
	end
}

SMODS.DeckSkin {
	key = "cultofcards_d",
	suit = "Diamonds",
	loc_txt = "Cult of the Cards",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King", "Ace" },
			display_ranks = {"Ace", "King", "Queen", "Jack" },
			atlas = "cotc_cultskin_lc",
			pos_style = 'deck'
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", "King", "Queen", "Jack"},
			atlas = "cotc_cultskin_hc",
			pos_style = 'deck',
			hc_default = true
		},
	},

	has_ds_card_ui = function(card, deckskin, palette) return true end,

	generate_ds_card_ui = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
		localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
		localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "Sargeant Death" }}
	end
}

-- ======================BADGES======================

cotc_badges = {
	DW = { text = "Darkwood", colour = HEX('007700') },
	AN = { text = "Anura", colour = HEX('FFAE00') },
	AD = { text = "Anchordeep", colour = HEX('0033FF') },
	SC = { text = "Silk Cradle", colour = HEX('550099') },
	WH = { text = "Woolhaven", colour = HEX('007BFF') },
	EF = { text = "Ewefall", colour = HEX('0095FF') },
	TR = { text = "The Rot", colour = HEX('990000') }
}