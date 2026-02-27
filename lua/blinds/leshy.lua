SMODS.Blind{
    atlas = 'blind',
    key = 'leshy',
    pos = { y = 0 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('1DC93D'),
    mult = 2,
    dollars = 8,
    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_order_unlock" })
        end
    end
}