SMODS.Consumable {
    key = "shoe",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 5 },
    cost = 10,
    config = {
        extra = {

        }
    },

    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = { set = "Other", key = "cotc_credit", specific_vars = {"Sargeant Death", "Not to be confused with Sargeant War"} }
		--return { vars = { } }
    end,
}