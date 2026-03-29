SMODS.Blind{
    atlas = 'blind',
    key = 'heket',
    pos = { y = 1 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('F1D300'),
    mult = 2,
    dollars = 8,
    
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_hand then
                blind.triggered = false
                if G.GAME.hands[context.scoring_name].level > 1 then
                    blind.triggered = true
                    if not context.check then
                        return {
                            level_up = -G.GAME.hands[context.scoring_name].level + 1
                        }
                    end
                end
            end
        end
    end,

    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_sate_unlock" })
        end
    end
}