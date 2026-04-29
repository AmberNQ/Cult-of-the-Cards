SMODS.Consumable {
    key = "seal",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 2, y = 5 },
    cost = 10,
    config = {
        immutable = {
            selected = false
        },
        extra = {
            xchips = 0.25,
            xchips_base = 1
        }
    },

    loc_vars = function(self, info_queue, card)
        local kings = 0
        for _, v in ipairs(G.playing_cards) do
            if v:get_id() == 13 then
                kings = kings + 1
            end
        end
        return { vars = { card.ability.extra.xchips, card.ability.extra.xchips_base + ( card.ability.extra.xchips * (kings or 4) ) } }
    end,

    keep_on_use = function(self, card) return true end,

    use = function(self, card, area, copier)
        if not card.ability.immutable.selected then
            card.ability.immutable.selected = true
            ToggleRelic(card)
        else
            card.ability.immutable.selected = false
            ToggleRelic(card)
        end
    end,

    calculate = function(self, card, context)
        if context.joker_main and card.ability.immutable.selected then
            local kings = 0
            for _, v in ipairs(G.playing_cards) do
                if v:get_id() == 13 then
                    kings = kings + 1
                end
            end
            return {
                xchips = card.ability.extra.xchips_base + ( card.ability.extra.xchips * kings )
            }
        end
        if context.after and card.ability.immutable.selected then
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,

    can_use = function(self, card)
        if G.GAME.blind.in_blind then return true end
    end,

    cotc_credits = {
        art = "Sgt. Death",
        code = "Amber N. Q."
    }
}