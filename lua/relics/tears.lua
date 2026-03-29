-- Blessed Tears --

SMODS.Consumable {
    key = "tears_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 4 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Tears --

SMODS.Consumable {
    key = "tears_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 1, y = 4 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}