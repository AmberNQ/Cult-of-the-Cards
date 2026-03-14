SMODS.Voucher {
    key = 'blessing',
    atlas = "voucher",
    pos = { x = 3, y = 1 },
    cost = 10,

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
    pos = { x = 4, y = 1 },
    cost = 10,
    
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                return true
            end
        }))
    end
}