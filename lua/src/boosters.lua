SMODS.Booster {
    atlas = "placeholder",
    key = "temple_normal_1",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 0, y = 2 },
    config = { choose = 1, extra = 5 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_normal_2",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 0, y = 2 },
    config = { choose = 1, extra = 5 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_jumbo",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 1, y = 2 },
    config = { choose = 1, extra = 7 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_mega",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 2, y = 2 },
    config = { choose = 2, extra = 7 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_holy_1",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 0, y = 2 },
    config = { choose = 1, extra = 5 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_holy_2",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 0, y = 2 },
    config = { choose = 1, extra = 5 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3)
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_holy_jumbo",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 1, y = 2 },
    config = { choose = 1, extra = 7 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
}

SMODS.Booster {
    atlas = "placeholder",
    key = "temple_holy_mega",
    group_key = "k_temple_pack",
    kind = 'cotc_Temple',
    pos = { x = 2, y = 2 },
    config = { choose = 2, extra = 7 },
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
}