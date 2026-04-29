SMODS.Consumable {
    key = "toenail",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 6 },
    cost = 10,
    config = {
        extra = {
            levels = 1
        }
    },

    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.levels } }
    end,

    use = function(self, card, context)
        local handname, played = 'High Card', -1
        for hand_key, hand in pairs(G.GAME.hands) do
            if hand.played > played then
                played = hand.played
                handname = hand_key
            end
        end
        local most_played = handname
        SMODS.upgrade_poker_hands({ hands = { most_played }, level_up = card.ability.extra.levels })
    end,

    can_use = function(self, card)
        return true
    end,

    cotc_credits = {
        art = "Sgt. Death",
        code = "Amber N. Q."
    }
}