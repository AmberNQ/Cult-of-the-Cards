SMODS.Blind{
    atlas = 'blind',
    key = 'marchosias',
    pos = { y = 6 },
    discovered = false,
    no_collection = not SMODS.current_mod.config.dlc_toggle,
    boss = { showdown = true },
    boss_colour = HEX('4F636E'),
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