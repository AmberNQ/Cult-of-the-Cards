-- Blessed Powder --

SMODS.Consumable {
    key = "aethrile_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 3, y = 3 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Powder --

SMODS.Consumable {
    key = "aethrile_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 3 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Powder --

SMODS.Consumable {
    key = "aethrile",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 3 },
    cost = 10,
    config = {
        extra = {

        }
    },
}