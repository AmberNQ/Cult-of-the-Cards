--[[TO DO LIST

- Add Godhood achievement unlock							[🔃]

- Add God Tears (custom currency)

- Add Mystic Seller
	- pay 1 god tear ($100 if we cant add custom currency) for a random spectral card

- Rebalance as necessary

- Add Localizations(NOT A PRIORITY)

- Add Edition Shaders										[🔃]

- Add Relic Recharge system.								[🔃]
	- Relics have a charge time based on internal config variable. 
	function checks number of rounds that have passed and if the difference is equal to charge time, 
	relic can be used again.

----   IDEAS   ----

- Knucklebones consumeable card
	- play a game of knucklebones against the current blind, if you win, adds X5 mult to your next hand.

- BalatroMultiplayer support, allowing for even more relics to be used between players.

- Shroud of the Healer
	- Reveals all blinds of every ante in run??

- Ritual of Resurrection Joker
	- bring a sold/destroyed card back to your deck.

- Full CardSleeves support(maybe on this one)

- Tears of the Vengeful Father
	- doubles the effects of chips enhancements(?)

- Tears of the Merciful Mother
	- Doubles the effects of mult enhancements(?)

- Wandering Shepherd card
	- Gains X0.5 mult for every time it's moved in the held hand. Mult triggers when card is held in hand, not played.

- Movement seals
	- when seal is triggered before scoring, moves all cards held in hand either to the left or right

---- BUG FIXES ----

- Leshy changes the card but they still score the same.

- Necromatic safeguard causes card hand to bug out.
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
						text = localize("cotc_title"),
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
				{ n = G.UIT.R, config = {
					r = 0.1,
					minw = 5.2,
					minh = 6.2,
					align = "cm",
					padding = 0.1,
					colour = G.C.L_BLACK 
				}, nodes = {
					{ n = G.UIT.C, config = { align = "tl" }, nodes = {						--Left Cards
						{ n = G.UIT.R, nodes = {
							{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_amber') } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.5, w = 0.1 } } } },
						{ n = G.UIT.R, nodes = {
							{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_sargeant') } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 1.3, w = 0.1 } } } }
					} },
					{ n = G.UIT.C, config = { padding = 0.1, minw = 2, align = "cm" }, nodes = {		--Descriptions
						{ n = G.UIT.R, config = { align = "cl"}, nodes = {
							{ n = G.UIT.T, config = { text = localize("cotc_credits_lead"), scale = .4, colour = G.C.WHITE } },
							{ n = G.UIT.T, config = { text = "Amber N. Q.", scale = .4, colour = G.C.FILTER } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.75, w = 0.1 } } } },
						{ n = G.UIT.R, config = { align = "cr" }, nodes = {
							{ n = G.UIT.T, config = { text = localize("cotc_credits_shaders"), scale = .4, colour = G.C.WHITE } },
							{ n = G.UIT.T, config = { text = "Metanite64", scale = .4, colour = G.C.BLUE } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.75, w = 0.1 } } } },
						{ n = G.UIT.R, config = { align = "cl"}, nodes = {
							{ n = G.UIT.T, config = { text = localize("cotc_credits_art"), scale = .4, colour = G.C.WHITE } },
							{ n = G.UIT.T, config = { text = "Sargeant Death", scale = .4, colour = G.C.UI.TEXT_INACTIVE } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.75, w = 0.1 } } } },
						{ n = G.UIT.R, config = { align = "cr" }, nodes = {
							{ n = G.UIT.T, config = { text = localize("cotc_credits_thanks"), scale = .4, colour = G.C.WHITE } },
							{ n = G.UIT.T, config = { text = "ellestuff.", scale = .4, colour = G.ARGS.LOC_COLOURS.elle } }
						} },
					} },
					{ n = G.UIT.C, config = { align = "br" }, nodes = {						--Right Cards
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 1.2, w = 0.1 } } } },
						{ n = G.UIT.R, nodes = {
							{ n = G.UIT.O, config = { object = slimeutils.create_display_card('j_cotc_meta') } }
						} },
						{ n = G.UIT.R, nodes = { { n = G.UIT.B, config = { h = 0.5, w = 0.1 } } } },
						{ n = G.UIT.R, nodes = {
							{ n = G.UIT.O, config = { object = slimeutils.create_display_card("j_cotc_elle") } }
						} },
					} }
				} },
			} },
			--[[{ n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = {			--Middle Column (not for show yet)
				{ n = G.UIT.R, config = {
					r = 0.1,
					minw = 3.9,
					minh = 6.2,
					align = "cm",
					padding = 0.1,
					colour = G.C.L_BLACK
				}, nodes = {
					{ n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 3.5 }, nodes = {
						{ n = G.UIT.R, config = { align = "cm" }, nodes = {
							{ n = G.UIT.T, config = { text = localize("cotc_credits_local"), scale = .5, colour = G.C.WHITE } }
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
			} },]]
			{ n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = {				--Right Column
				{ n = G.UIT.R, config = {
					r = 0.1,
					maxw = 4,
					minh = 6.2,
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
						{ n = G.UIT.R, config = { padding = 0.2, align = "cm" }, nodes = {
							UIBox_button{ minw = 3, colour = HEX("B30000"), button = "cotc_steam", label = {localize("cotc_credits_join")} },
						} }
					} }
				} }
			} }
		} }
	} }
end

function G.FUNCS.cotc_steam(e) love.system.openURL("https://store.steampowered.com/app/1313140/Cult_of_the_Lamb") end

-- File Indexes --

local file_groups = {
	"src",
	"jokers",
	"decks",
	"tarots",
	"relics",
	"blinds"
}

local files = {
	src = {
		"0-init",

		"credits",
		"achievements",
		"vouchers",
		"editions",
		"tags",
		"boosters",
		--"ui",
		"config"
	},

	jokers = {
		"0-init",

		--"lamb",
		--"resurrection"
	},

	decks = {
		"golden",
		"berserker"
	},

	tarots = {
		"0-init",

		"hearts",
		"boon",
		"hand",
		"death"
	},

	relics = {
		"0-init",

		--[BLESSING AND DAMNATION RELICS]
		--"beads",
		"mirror",
		--"hair",
		"laplace",
		--"balm",
		--"ala",
		"exorcist",
		--"aethrile",
		--"tears",

		--[BASIC RELICS]
		--"galvar",
		--"icegore_eye",
		--"slythor_eye",
		--"fervant",
		--"beak",
		--"icegore_toe",
		"seal",
		--"slythor_tail",
		"shoe",
		--"transmogricon",
		"toenail",
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
		"0-init",

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

	if SMODS.Mods["CultCards"].config.dlc_toggle then
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
			name = "vort_speed",
			val = 0.3
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