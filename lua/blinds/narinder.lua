SMODS.Blind{
    atlas = 'blind',
    key = 'narinder',
    pos = { y = 4 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('DE0202'),
    mult = 2,
    dollars = 8,

    collection_loc_vars = function(self)
        return { vars = { '1', '4' } }
    end,

    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.press_play then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local any_selected = nil
                        local _cards = {}
                        for _, playing_card in ipairs(G.hand.cards) do
                            _cards[#_cards + 1] = playing_card
                        end
                        for i = 1, 4 do
                            if G.hand.cards[i] then
                                local selected_card, card_index = pseudorandom_element(_cards, 'cotc_narinder')
                                G.hand:add_to_highlighted(selected_card, true)
                                SMODS.destroy_cards(selected_card, card_index)
                                any_selected = true
                                play_sound('card1', 1)
                                if selected_card then table.remove(_cards, card_index) end
                            end
                        end
                        return true
                    end
                }))
                blind.triggered = true -- This won't trigger Matador in this context due to a Vanilla bug (a workaround is setting it in context.debuff_hand)
                delay(0.7)
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = (function()
                        SMODS.juice_up_blind()
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.06 * G.SETTINGS.GAMESPEED,
                            blockable = false,
                            blocking = false,
                            func = function()
                                play_sound('tarot2', 0.76, 0.4); return true
                            end
                        }))
                        play_sound('tarot2', 1, 0.4)
                        return true
                    end)
                }))
                delay(0.4)
            end
        end
    end,

    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_life_unlock" })
        end
    end
}