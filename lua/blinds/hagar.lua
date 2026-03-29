SMODS.Blind{
    atlas = 'blind',
    key = 'hagar',
    pos = { y = 5 },
    boss = { min = 3 },
    boss_colour = HEX('9F1414'),
    mult = 0.5,
    dollars = 5,

    calculate = function(self, blind, context)
        if context.end_of_round and context.game_over then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand_text_area.blind_chips:juice_up()
                    G.hand_text_area.game_chips:juice_up()
                    check_for_unlock({ type = "cotc_sins_unlock" })
                    return true
                end
            }))
            return {
                saved = 'ph_cotc_mercy',
            }
        end
    end,

    defeat = function(self)
        if G.GAME.chips >= G.GAME.blind.chips then
            check_for_unlock({ type = "cotc_cold_unlock" })
        end
    end
}