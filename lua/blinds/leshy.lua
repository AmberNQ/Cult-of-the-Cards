SMODS.Blind{
    atlas = 'blind',
    key = 'leshy',
    pos = { y = 0 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('1DC93D'),
    mult = 2,
    dollars = 8,

    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.before then
                for k, v in pairs(context.full_hand) do
                    G.E_MANAGER:add_event(Event({
                        func = function ()
                            v:flip()
                            v:juice_up(0.3, 0.3)
                            return true
                        end
                    }))
                    delay(0.2)
                    local _rank = pseudorandom_element(SMODS.Ranks, 'cotc_leshy')
                    G.E_MANAGER:add_event(Event({
                        func = function ()
                            assert(SMODS.change_base(v, nil, _rank.key, true))
                            v:set_sprites(nil, v.config.card)
                            return true
                        end
                    }))
                    delay(0.5)
                    G.E_MANAGER:add_event(Event({
                        func = function ()
                            v:flip()
                            v:juice_up(0.3, 0.3)
                            return true
                        end
                    }))
                    delay(0.5)
                end
            end
        end
    end,

    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_order_unlock" })
        end
    end
}