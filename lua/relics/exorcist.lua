-- Blessed Finger --

SMODS.Consumable {
    key = "exorcist_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 3 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Finger --

SMODS.Consumable {
    key = "exorcist_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 1, y = 3 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Finger --

SMODS.Consumable {
    key = "exorcist",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 2, y = 3 },
    cost = 10,
    config = {
        extra = {

        }
    },
    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = { set = "Other", key = "cotc_credit", specific_vars = {"Sargeant Death", "Not to be confused with Sargeant War"} }
		--return { vars = { } }
    end,
}