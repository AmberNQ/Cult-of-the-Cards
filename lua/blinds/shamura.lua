SMODS.Blind{
    atlas = 'blind',
    key = 'shamura',
    pos = { y = 3 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('8620B5'),
    mult = 2,
    dollars = 8,
    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_peace_unlock" })
        end
    end
}