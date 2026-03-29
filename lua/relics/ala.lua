-- Blessed Tooth --

SMODS.Consumable {
    key = "ala_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 3, y = 2 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Tooth --

SMODS.Consumable {
    key = "ala_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 2 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Tooth --

SMODS.Consumable {
    key = "ala",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 2 },
    cost = 10,
    config = {
        extra = {

        }
    },
}