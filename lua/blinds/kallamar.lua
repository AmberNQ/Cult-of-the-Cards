SMODS.Blind{
    atlas = 'blind',
    key = 'kallamar',
    pos = { y = 2 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('278BDA'),
    mult = 2,
    dollars = 8,
    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_cure_unlock" })
        end
    end
}