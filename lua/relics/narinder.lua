SMODS.Consumable {
    key = "claw",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 10 },
    unlocked = false,
    cost = 10,
    config = {
        extra = {
            
        }
    },

    in_pool = function(self, args)
        if G.P_CENTERS["cotc_eye_cleansed"].unlocked and G.P_CENTERS["cotc_throat_cleansed"].unlocked and
        G.P_CENTERS["cotc_ear_cleansed"].unlocked and G.P_CENTERS["cotc_skull_cleansed"].unlocked then
            return true
        end
        return false
    end,
}