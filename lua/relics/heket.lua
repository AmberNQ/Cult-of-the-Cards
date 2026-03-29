-- Regular Throat --

SMODS.Consumable {
    key = "throat",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 9 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return not G.P_CENTERS["cotc_throat_cleansed"].unlocked end,
}

-- Cleansed Throat --

SMODS.Consumable {
    key = "throat_cleansed",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 1, y = 9 },
    unlocked = false,
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return true end,
}