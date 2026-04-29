-- Blessed Mirror --

SMODS.Consumable {
    key = "mirror_B",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 3, y = 0 },
    cost = 8,
    config = {
        extra = {
            levels = 0
        }
    },

    use = function(self, card, context)
        local deletable_jokers = {}
        for _, joker in pairs(G.jokers.cards) do
            if not SMODS.is_eternal(joker, card) then deletable_jokers[#deletable_jokers + 1] = joker end
        end

        local deleted_jokers = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.75,
            func = function()
                for _, joker in pairs(deletable_jokers) do
                    joker:start_dissolve(nil)
                    deleted_jokers = deleted_jokers + 1
                end
                card.ability.extra.levels = deleted_jokers
                update_hand_text(
                    { sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                    { handname = localize('k_all_hands'), chips = '...', mult = '...', level = '' }
                )
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    func = function()
                        play_sound('tarot1')
                        card:juice_up(0.8, 0.5)
                        G.TAROT_INTERRUPT_PULSE = true
                        return true
                    end
                }))
                update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.9,
                    func = function()
                        play_sound('tarot1')
                        card:juice_up(0.8, 0.5)
                        return true
                    end
                }))
                update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.9,
                    func = function()
                        play_sound('tarot1')
                        card:juice_up(0.8, 0.5)
                        G.TAROT_INTERRUPT_PULSE = nil
                        return true
                    end
                }))
                update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
                delay(1.3)
                SMODS.upgrade_poker_hands({ level_up = card.ability.extra.levels, instant = true })
                update_hand_text(
                    { sound = 'button', volume = 0.7, pitch = 1.1, delay = 0 },
                    { mult = 0, chips = 0, handname = '', level = '' }
                )
                return true
            end
        }))
    end,

    can_use = function(self, card)
        return G.jokers and #G.jokers.cards > 0
    end,

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Mirror --

SMODS.Consumable {
    key = "mirror_D",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 4, y = 0 },
    cost = 4,
    config = {
        extra = {
            levels = 0
        }
    },

    use = function(self, card, context)
        local deletable_jokers = {}
        for _, joker in pairs(G.jokers.cards) do
            if not SMODS.is_eternal(joker, card) then deletable_jokers[#deletable_jokers + 1] = joker end
        end

        local handname, played = 'High Card', -1
        for hand_key, hand in pairs(G.GAME.hands) do
            if hand.played > played then
                played = hand.played
                handname = hand_key
            end
        end
        local most_played = handname
        local deleted_jokers = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.75,
            func = function()
                for _, joker in pairs(deletable_jokers) do
                    joker:start_dissolve(nil)
                    deleted_jokers = deleted_jokers + 1
                end
                card.ability.extra.levels = deleted_jokers
                SMODS.upgrade_poker_hands({ hands = { most_played }, level_up = card.ability.extra.levels })
                return true
            end
        }))
    end,

    can_use = function(self, card)
        return G.jokers and #G.jokers.cards > 0
    end,

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Mirror --

SMODS.Consumable {
    key = "mirror",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 5, y = 0 },
    cost = 4,
    config = {
        extra = {
            levels = 0
        }
    },

    use = function(self, card, context)
        local deletable_jokers = {}
        for _, joker in pairs(G.jokers.cards) do
            if not SMODS.is_eternal(joker, card) then deletable_jokers[#deletable_jokers + 1] = joker end
        end

        local deleted_jokers = 0
        local list = {
            'High Card',
            'Pair',
            'Two Pair',
            'Three of a Kind',
            'Straight',
            'Flush',
            'Full House',
            'Four of a Kind',
            'Straight Flush',
            'Five of a Kind',
            'Flush House',
            'Flush Five'
        }
        local random_hand = pseudorandom_element(list, "cotc_pseudorand")
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.75,
            func = function()
                for _, joker in pairs(deletable_jokers) do
                    joker:start_dissolve(nil)
                    deleted_jokers = deleted_jokers + 1
                end
                card.ability.extra.levels = deleted_jokers
                SMODS.upgrade_poker_hands({ hands = { random_hand }, level_up = card.ability.extra.levels })
                return true
            end
        }))
    end,

    can_use = function(self, card)
        return G.jokers and #G.jokers.cards > 0
    end,

    cotc_credits = {
        art = "Sgt. Death",
        code = "Amber N. Q."
    }
}