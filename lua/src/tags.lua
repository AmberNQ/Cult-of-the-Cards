--Bane Tag
SMODS.Tag {
    key = "bane",
    atlas = "tag",
    pos = { x = 0, y = 0 },
    min_ante = 2,
    
    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_bane
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_bane", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_bane"].discovered
    end,
}

--Vampiric Tag
SMODS.Tag {
    key = "vampiric",
    atlas = "tag",
    pos = { x = 1, y = 0 },
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_vampiric
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_vampiric", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_vampiric"].discovered
    end,
}

--Necromatic Tag
SMODS.Tag {
    key = "necro",
    atlas = "tag",
    pos = { x = 2, y = 0 },
    min_ante = 3,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_necro
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_necro", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_necro"].discovered
    end,
}

--Zealous Tag
SMODS.Tag {
    key = "zealous",
    atlas = "tag",
    pos = { x = 3, y = 0 },
    min_ante = 4,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_zealous
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_zealous", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_zealous"].discovered
    end,
}

--Merciless Tag
SMODS.Tag {
    key = "merciless",
    atlas = "tag",
    pos = { x = 4, y = 0 },
    min_ante = 5,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_merciless
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_merciless", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_merciless"].discovered
    end,
}

--Godly Tag
SMODS.Tag {
    key = "godly",
    atlas = "tag", 
    pos = { x = 5, y = 0 },
    min_ante = 6,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_cotc_godly
    end,

    apply = function(self, tag, context)
        if context.type == 'store_joker_modify' then
            if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
                local lock = tag.ID
                G.CONTROLLER.locks[lock] = true
                context.card.temp_edition = true
                tag:yep('+', G.C.DARK_EDITION, function()
                    context.card.temp_edition = nil
                    context.card:set_edition("e_cotc_godly", true)
                    context.card.ability.couponed = true
                    context.card:set_cost()
                    G.CONTROLLER.locks[lock] = nil
                    return true
                end)
                tag.triggered = true
                return true
            end
        end
    end,

    in_pool = function(self, args)
        return G.P_CENTERS["e_cotc_godly"].discovered
    end,
}