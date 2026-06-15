SMODS.Booster {
    atlas = "booster",
    key = "temple_1",
    kind = 'cotc_Temple',
    group_key = "k_temple_pack",
    pos = { x = 0, y = 0 },
    config = { choose = 1, extra = 2 },
    cost = 4,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('266EB6'))
        ease_background_colour { new_colour = HEX('266EB6'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Relic", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "temple_2",
    kind = 'cotc_Temple',
    group_key = "k_temple_pack",
    pos = { x = 1, y = 0 },
    config = { choose = 1, extra = 2 },
    cost = 4,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('266EB6'))
        ease_background_colour { new_colour = HEX('266EB6'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Relic", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "temple_jumbo",
    kind = 'cotc_Temple',
    group_key = "k_temple_pack",
    pos = { x = 2, y = 0 },
    config = { choose = 1, extra = 5 },
    cost = 6,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('266EB6'))
        ease_background_colour { new_colour = HEX('266EB6'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Relic", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "temple_mega",
    kind = 'cotc_Temple',
    group_key = "k_temple_pack",
    pos = { x = 3, y = 0 },
    config = { choose = 2, extra = 5 },
    cost = 8,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('266EB6'))
        ease_background_colour { new_colour = HEX('266EB6'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Relic", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "pelt_1",
    kind = 'cotc_Pelt',
    group_key = "k_pelt_pack",
    pos = { x = 0, y = 1 },
    config = { choose = 1, extra = 2 },
    cost = 4,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('E42727'))
        ease_background_colour { new_colour = HEX('E42727'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "pelt_2",
    kind = 'cotc_Pelt',
    group_key = "k_pelt_pack",
    pos = { x = 1, y = 1 },
    config = { choose = 1, extra = 2 },
    cost = 4,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('E42727'))
        ease_background_colour { new_colour = HEX('E42727'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "pelt_jumbo",
    kind = 'cotc_Pelt',
    group_key = "k_pelt_pack",
    pos = { x = 2, y = 1 },
    config = { choose = 1, extra = 5 },
    cost = 6,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('E42727'))
        ease_background_colour { new_colour = HEX('E42727'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}

SMODS.Booster {
    atlas = "booster",
    key = "pelt_mega",
    kind = 'cotc_Pelt',
    group_key = "k_pelt_pack",
    pos = { x = 3, y = 1 },
    config = { choose = 2, extra = 5 },
    cost = 8,
    select_card = 'consumeables',

    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,

    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('E42727'))
        ease_background_colour { new_colour = HEX('E42727'), special_colour = G.C.BLACK, contrast = 2 }
    end,

    create_card = function(self, card, i)
        return { set = "cotc_Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "cotc_temple" }
    end,
}