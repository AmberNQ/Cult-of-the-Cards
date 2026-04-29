SMODS.Consumable {
    key = "shoe",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 5 },
    cost = 3,
    config = {
        immutable = {
            selected = false
        },
        extra = {
            chips = 100,
            fallback = 50,
        }
    },

    loc_vars = function(self, info_queue, card)
        local tarot = card.ability.extra.chips * (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.tarot or 0)
        if tarot == 0 then tarot = card.ability.extra.fallback end
		return { vars = { card.ability.extra.chips, card.ability.extra.fallback, tarot } }
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
        if card.ability.immutable.selected then
            if context.joker_main and G.GAME.consumeable_usage_total.tarot > 0 then
                return {
                    chips = card.ability.extra.chips * G.GAME.consumeable_usage_total.tarot
                }
            elseif context.joker_main and G.GAME.consumeable_usage_total.tarot == 0 then
                return {
                    chips = card.ability.extra.fallback
                }
            end
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