SMODS.Voucher {
    key = 'blessing',
    atlas = "voucher",
    pos = { x = 0, y = 0 },
    cost = 5,

    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = { set = "Other", key = "cotc_credit", specific_vars = {"Sargeant Death", "Not to be confused with Sargeant War"} }
    end,

    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                return true
            end
        }))
    end
}

SMODS.Voucher {
    key = 'damnation',
    atlas = "voucher",
    pos = { x = 1, y = 0 },
    cost = 5,

    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = { set = "Other", key = "cotc_credit", specific_vars = {"Sargeant Death", "Not to be confused with Sargeant War"} }
    end,
    
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                return true
            end
        }))
    end
}