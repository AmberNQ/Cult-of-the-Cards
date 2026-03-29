-- Blessed Mirror --

SMODS.Consumable {
    key = "mirror_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 3, y = 0 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Mirror --

SMODS.Consumable {
    key = "mirror_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 0 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Mirror --

SMODS.Consumable {
    key = "mirror",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 0 },
    cost = 10,
    config = {
        extra = {

        }
    },
}