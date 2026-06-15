-- =================ATLASES/SHADERS=================

SMODS.Atlas{
    key = "cotc_splash_screen",
    path = "splash_sprite.png",
    px = 333,
    py = 76,
}

local icon = "modicon"
if SMODS.Mods["CultCards"].config.dlc_toggle then
	icon = "modicon_alt"
end

SMODS.Atlas {
    key = "modicon",
    path = icon..".png",
    px = 32,
    py = 32
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
    key = "booster",
    path = "boosters.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "tag",
    path = "tags.png",
    px = 34,
    py = 34
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
	key = "bane",
	path = "bane.fs"
}

SMODS.Shader {
	key = "vampiric",
	path = "vampiric.fs"
}

SMODS.Shader {
	key = "necro",
	path = "necro.fs"
}

SMODS.Shader {
	key = "zealous",
	path = "zealous.fs"
}

SMODS.Shader {
	key = "merciless",
	path = "merciless.fs"
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
	key = "CultCards_s",
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
	key = "CultCards_h",
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
	key = "CultCards_c",
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
	key = "CultCards_d",
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
	TC = { text = "The Cult", colour = HEX('770000') },
	DW = { text = "Darkwood", colour = HEX('007700') },
	AN = { text = "Anura", colour = HEX('FFAE00') },
	AD = { text = "Anchordeep", colour = HEX('0033FF') },
	SC = { text = "Silk Cradle", colour = HEX('550099') },
	WH = { text = "Woolhaven", colour = HEX('007BFF') },
	EF = { text = "Ewefall", colour = HEX('0095FF') },
	TR = { text = "The Rot", colour = HEX('990000') }
}
