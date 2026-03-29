-- Regular Skull --

SMODS.Consumable {
    key = "skull",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 9 },
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return not G.P_CENTERS["cotc_ear_cleansed"].unlocked end,
}

-- Cleansed Skull --

SMODS.Consumable {
    key = "skull_cleansed",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 9 },
    unlocked = false,
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args) return true end,
}