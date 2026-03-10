SMODS.Blind{
    atlas = 'blind',
    key = 'yngya',
    pos = { y = 5 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('14CFEA'),
    mult = 2,
    dollars = 8,
    debuff = { nominal = 11 },

    in_pool = function(self, args)
        if not SMODS.Mods["cultofcards"].config.dlc_toggle then
            return false
        end
        return true
    end,
}