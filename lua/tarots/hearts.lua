SMODS.Consumable {
    key = "hearts",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 0, y = 0 },
    cost = 3,
    config = {
        extra = {
            hands = 1
        }
    },
    
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,

    use = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
        ease_hands_played(card.ability.extra.hands)
    end,

    can_use = function(self, card) return true end,

    cotc_credits = {
        art = "Amber N. Q.",
        code = "Amber N. Q."
    }
}

SMODS.Consumable {
    key = "hearts2",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 1, y = 0 },
    cost = 4,
    config = {
        extra = {
            hands = 2
        }
    },
    
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,

    use = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
        ease_hands_played(card.ability.extra.hands)
    end,

    can_use = function(self, card) return true end,

    cotc_credits = {
        art = "Amber N. Q.",
        code = "Amber N. Q."
    }
}

SMODS.Consumable {
    key = "hearts3",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 2, y = 0 },
    cost = 5,
    config = {
        extra = {
            hands = 3
        }
    },
    
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,

    use = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
        ease_hands_played(card.ability.extra.hands)
    end,

    can_use = function(self, card) return true end,

    cotc_credits = {
        art = "Amber N. Q.",
        code = "Amber N. Q."
    }
}