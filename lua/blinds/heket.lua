SMODS.Blind{
    atlas = 'blind',
    key = 'heket',
    pos = { y = 1 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('F1D300'),
    mult = 2,
    dollars = 8,
    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_sate_unlock" })
        end
    end
}