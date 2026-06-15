SMODS.Consumable {
    key = "boon",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 4, y = 0 },
    cost = 3,
    config = {
        immutable = {
            selected = false
        },
        extra = {
            base = 1,
            xmult = 0.1
        }
    },

    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.base + ( card.ability.extra.xmult * math.max( 0, ( G.GAME.dollars + ( G.GAME.dollar_buffer or 0 ) ) ) ) } }
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
            return {
                x_mult = card.ability.extra.base + ( card.ability.extra.xmult * math.max( 0, ( G.GAME.dollars + ( G.GAME.dollar_buffer or 0 ) ) ) )
            }
        end
        if context.after and card.ability.immutable.selected then
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,

    can_use = function(self, card)
        if G.GAME.blind.in_blind then return true end
    end,
}