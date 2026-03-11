SMODS.Blind{
    atlas = 'blind',
    key = 'hagar',
    pos = { y = 7 },
    discovered = false,
    no_collection = not SMODS.current_mod.config.dlc_toggle,
    boss = { min = 1, max = 10 },
    boss_colour = HEX('9F1414'),
    mult = 0.5,
    dollars = 5,

    in_pool = function(self, args)
        if not SMODS.Mods["cultofcards"].config.dlc_toggle then
            return false
        end
        return true
    end,

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
                saved = 'ph_cotc_saved',
            }
        end
    end,

    defeat = function(self)
        if G.GAME.chips >= G.GAME.blind.chips then
            check_for_unlock({ type = "cotc_cold_unlock" })
        end
    end
}