SMODS.Joker {
    atlas = 'joker',
    key = 'joker',
	pos = { x = 2, y = 0 },
    set_badges = function(self, card, badges) if (self.discovered) then
        badges[#badges+1] = slimeutils.table_create_badge(cotc_badges.TR)
	end end,
    rarity = 1,
    cost = 10,
    config = { extra = { odds = 2, hands = 1 } },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands} }
    end,

    calculate = function(self, card, context)
        if context.setting_blind then
            if SMODS.pseudorandom_probability(card, 'cotc_joker', 1, card.ability.extra.odds) then
                ease_hands_played(card.ability.extra.hands)
                return {
                    message = "+"..card.ability.extra.hands.." hand",
                    colour = G.C.BLUE
                }
            else
                ease_hands_played(-card.ability.extra.hands)
                return {
                    message = "-"..card.ability.extra.hands.." hand",
                    colour = G.C.RED
                }
            end
        end
    end
}