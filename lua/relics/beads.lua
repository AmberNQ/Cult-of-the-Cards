-- Blessed Beads --

SMODS.Consumable {
    key = "beads_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 0 },
    cost = 10,
    config = {
        extra = {
            used = false,
            charge = 0
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Beads --

SMODS.Consumable {
    key = "beads_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 1, y = 0 },
    cost = 10,
    config = {
        extra = {
            used = false,
            charge = 0
        }
    },

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Beads --

SMODS.Consumable {
    key = "beads",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 2, y = 0 },
    cost = 10,
    config = {
        extra = {
            used = false,
            charge = 0
        }
    },
}