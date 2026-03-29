SMODS.Blind{
    atlas = 'blind',
    key = 'marchosias',
    pos = { y = 6 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('4F636E'),
    mult = 2,
    dollars = 8,

    calculate = function (self, blind, context)
        if not blind.disabled then
            if context.debuff_card and next(G.play.cards) and SMODS.in_scoring(context.debuff_card, select(4, G.FUNCS.get_poker_hand_info(G.play.cards))) then
                return {
                    debuff = true
                }
            end
            if context.modify_scoring_hand then
                return {
                    add_to_hand = true
                }
            end
        end
    end
}