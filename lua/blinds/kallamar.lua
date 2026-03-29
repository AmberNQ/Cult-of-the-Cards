SMODS.Blind{
    atlas = 'blind',
    key = 'kallamar',
    pos = { y = 2 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('278BDA'),
    mult = 2,
    dollars = 8,

    calculate = function(self, card, context)
        if context.pre_discard then
            ease_hands_played(-1)
            SMODS.juice_up_blind()
            if G.GAME.current_round.hands_left <= 1 then
                delay(1)
                end_round()
            end
        end
    end,

    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_cure_unlock" })
        end
    end
}