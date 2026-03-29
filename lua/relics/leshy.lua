-- Regular Eye --

SMODS.Consumable {
    key = "eye",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 8 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return not G.P_CENTERS["cotc_eye_cleansed"].unlocked end,
}

-- Cleansed Eye --

SMODS.Consumable {
    key = "eye_cleansed",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 8 },
    unlocked = false,
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return true end,
}