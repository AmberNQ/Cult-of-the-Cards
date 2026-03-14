-- Blessed Balm --

SMODS.Consumable {
    key = "balm_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 2 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Balm --

SMODS.Consumable {
    key = "balm_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 1, y = 2 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Balm --

SMODS.Consumable {
    key = "balm",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 2, y = 2 },
    cost = 10,
    config = {
        extra = {

        }
    },
}