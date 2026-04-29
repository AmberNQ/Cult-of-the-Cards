SMODS.ConsumableType{
	key = 'cotc_Relic',
    primary_colour = HEX('266EB6'),
    secondary_colour = HEX('266EB6'),
    collection_rows = { 6, 6 },
    default = "c_cotc_laplace",
    shop_rate = 1,
}

SMODS.UndiscoveredSprite {
	key = 'cotc_Relic',
	atlas = 'relic',
	pos = { x = 1, y = 11 },
}

SMODS.Atlas {
    key = "relic",
    path = "relics.png",
    px = 71,
    py = 95
}

function ToggleRelic(card)
    local eval = function(card) return (card.ability.immutable.selected) end
    juice_card_until(card, eval, true)
end

function RelicCharge(card, context)
    if context.after and card.ability.immutable.used then 
        local last_use = G.GAME.round
    end
    if context.end_of_round then
        card.ability.immutable.charge_count = card.ability.immutable.charge_count + 1
        if card.ability.immutable.charge_count ~= card.ability.immutable.charge then
            return false
        else
            card.ability.immutable.charge_count = 0
            return true
        end
    end
    if G.GAME.blind.in_blind then
        return false
    end
end