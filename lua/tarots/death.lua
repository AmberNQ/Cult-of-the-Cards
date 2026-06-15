SMODS.Consumable {
    key = "death",
    set = "cotc_Tarot",
    atlas = 'tarot',
    pos = { x = 0, y = 3 },
    cost = 5,
    config = {
        immutable = {
            selected = false,
            used = false
        },
        extra = {
            xmult = 5
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_left == 1 then
            card.ability.immutable.selected = true
            ToggleRelic(card)
        end
        if context.joker_main and G.GAME.current_round.hands_left == 0 then
            card.ability.immutable.used = true
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.after and card.ability.immutable.used then
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,
}