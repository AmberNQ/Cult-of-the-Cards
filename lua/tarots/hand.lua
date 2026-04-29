SMODS.Consumable {
    key = "hand",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 0, y = 1 },
    cost = 3,
    config = {
        extra = {
            h_size = 1
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,

    use = function(self, card, from_debuff)
        G.hand:change_size(card.ability.extra.h_size)
    end,

    can_use = function(self, card)
        return true
    end,

    cotc_credits = {
        art = "Sgt. Death",
        code = "Amber N. Q."
    }
}