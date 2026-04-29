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

-- Credits Badge(stolen from Cold Beans who stole it from Hot Potato) --

CultCards = SMODS.current_mod
local cotccb = SMODS.create_mod_badges
function SMODS.create_mod_badges(obj, badges)
	cotccb(obj, badges)
	if not SMODS.config.no_mod_badges and obj and obj.cotc_credits then
		local function calc_scale_fac(text)
			local size = 0.9
			local font = G.LANG.font
			local max_text_width = 2 - 2 * 0.05 - 4 * 0.03 * size - 2 * 0.03
			local calced_text_width = 0
			-- Math reproduced from DynaText:update_text
			for _, c in utf8.chars(text) do
				local tx = font.FONT:getWidth(c) * (0.33 * size) * G.TILESCALE * font.FONTSCALE
					+ 2.7 * 1 * G.TILESCALE * font.FONTSCALE
				calced_text_width = calced_text_width + tx / (G.TILESIZE * G.TILESCALE)
			end
			local scale_fac = calced_text_width > max_text_width and max_text_width / calced_text_width or 1
			return scale_fac
		end
		if obj.cotc_credits.art or obj.cotc_credits.shader or obj.cotc_credits.code then
			local scale_fac = {}
			local min_scale_fac = 1
			local strings = { CultCards.display_name }
			for _, v in ipairs({ "art", "shader", "code" }) do
				if obj.cotc_credits[v] then
					if type(obj.cotc_credits[v]) == "string" then obj.cotc_credits[v] = { obj.cotc_credits[v] } end
					for i = 1, #obj.cotc_credits[v] do
						strings[#strings + 1] =
							localize({ type = "variable", key = "cotc_" .. v, vars = { obj.cotc_credits[v][i] } })
							[1]
					end
				end
			end
			if obj.cotc_credits.custom then
				strings[#strings + 1] = localize({ type = "variable", key = obj.cotc_credits.custom.key, vars = { obj.cotc_credits.custom.text } })
			end
			for i = 1, #strings do
				scale_fac[i] = calc_scale_fac(strings[i])
				min_scale_fac = math.min(min_scale_fac, scale_fac[i])
			end
			local ct = {}
			for i = 1, #strings do
				ct[i] = {
					string = strings[i],
				}
			end
			for i = 1, #badges do
				if badges[i].nodes[1].nodes[2].config.object.string == CultCards.display_name then
					badges[i].nodes[1].nodes[2].config.object:remove()
					badges[i] = {
						n = G.UIT.R,
						config = { align = "cm" },
						nodes = {
							{
								n = G.UIT.R,
								config = {
									align = "cm",
									colour = CultCards.badge_colour,
									r = 0.1,
									minw = 2 / min_scale_fac,
									minh = 0.36,
									emboss = 0.05,
									padding = 0.03 * 0.9,
								},
								nodes = {
									{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
									{
										n = G.UIT.O,
										config = {
											object = DynaText({
												string = ct or "ERROR",
												colours = { obj.cotc_credits and obj.cotc_credits.text_colour or HEX("FF0000") },
												silent = true,
												float = true,
												shadow = true,
												offset_y = -0.03,
												spacing = 1,
												scale = 0.33 * 0.9,
											}),
										},
									},
									{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
								},
							},
						},
					}
					break
				end
			end
		end
	end
end

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
		"0-init",

		"credits",
		"achievements",
		"decks",
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