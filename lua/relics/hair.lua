-- Blessed Hair --

SMODS.Consumable {
    key = "hair_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 1 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Hair --

SMODS.Consumable {
    key = "hair_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 1, y = 1 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Hair --

SMODS.Consumable {
    key = "hair",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 2, y = 1 },
    cost = 10,
    config = {
        extra = {

        }
    },
}