SMODS.Shader {
    key = "bane",
    path = "bane.fs"
}

SMODS.Edition {
    key = "bane",
    shader = "bane",
    weight = 20,
    extra_cost = 2,
    config = {
        odds = 3,
        xblind = 0.9
    },
    disable_base_shader = true,

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.edition.odds, 'cotc_bane')
        return { vars = { numerator, denominator, card.edition.xblind } }
    end,

    calculate = function(self, card, context)
        if context.pre_joker or (context.main_scoring and context.cardarea == G.play) then
            if SMODS.pseudorandom_probability(card, 'cotc_bane', 1, card.edition.odds) then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.3,
                    func = function()
                        play_sound('timpani')
                        G.GAME.blind.chips = G.GAME.blind.chips * card.edition.xblind
                        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                        SMODS.juice_up_blind()
                        card:juice_up(0.3, 0.5)
                        return true
                    end
                }))
            end
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q."
    }
}

SMODS.Shader {
    key = "vampiric",
    path = "vampiric.fs"
}

SMODS.Edition {
    key = "vampiric",
    shader = "vampiric",
    weight = 18,
    extra_cost = 3,
    config = {
        odds = 2,
        hands = 1
    },

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.edition.odds, 'cotc_vampiric')
        return { vars = { numerator, denominator, card.edition.hands } }
    end,

    calculate = function(self, card, context)
        if (context.playing_card_end_of_round and context.other_card == card and context.cardarea == G.hand) or (context.end_of_round and context.main_eval) then
            if SMODS.pseudorandom_probability(card, 'cotc_vampiric', 1, card.edition.odds) then
                G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.edition.hands
                ease_hands_played(card.edition.hands)
                return {
                    message = "+"..card.edition.hands.." hand",
                    colour = G.C.BLUE
                }
            end
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q."
    }
}

SMODS.Edition {
    key = "necro",
    shader = "necro",
    weight = 14,
    extra_cost = 5,
    config = {
        odds = 5,
        chips = 0
    },
    disable_base_shader = true,

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.edition.odds, 'cotc_necro')
        return { vars = { numerator, denominator } }
    end,

    calculate = function(self, card, context)
        if (context.playing_card_end_of_round and context.other_card == card and context.cardarea == G.hand) or (context.end_of_round and context.main_eval) then
            card.edition.chips = G.GAME.blind.chips
            card:juice_up(.4,.4)
        end

        if context.setting_blind and SMODS.pseudorandom_probability(card, 'cotc_necro', 1, card.edition.odds) then
            G.GAME.chips = G.GAME.chips + card.edition.chips
            card:juice_up(.4,.4)
            if G.GAME.chips >= G.GAME.blind.chips then
                G.STATE = G.STATES.HAND_PLAYED
                G.STATE_COMPLETE = true
                end_round()
            end
            return {
                message = localize("k_cotc_hit"),
                colour = G.C.EDITION
            }
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q."
    }
}

SMODS.Shader {
    key = "zealous",
    path = "zealous.fs"
}

SMODS.Edition {
    key = "zealous",
    shader = "zealous",
    weight = 10,
    extra_cost = 5,
    config = {
        dollars = 5
    },
    disable_base_shader = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.edition.dollars } }
    end,

    calculate = function(self, card, context)
        if context.pre_discard then
            ease_dollars(card.edition.dollars)
            card:juice_up(.4,.4)
            return {
                message = "$5",
                colour = G.C.GOLD
            }
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q.",
    }
}

SMODS.Edition {
    key = "merciless",
    shader = "merciless",
    weight = 5,
    extra_cost = 7,
    config = {
        odds = 3,
        x_mult = 5
    },

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.edition.odds, 'cotc_merciless')
        return { vars = { numerator, denominator, card.edition.x_mult } }
    end,

    calculate = function(self, card, context)
        if context.pre_joker or (context.main_scoring and context.cardarea == G.play) and SMODS.pseudorandom_probability(card, 'cotc_merciless', 1, card.edition.odds) then
            return {
                x_mult = card.edition.x_mult
            }
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q."
    }
}

SMODS.Edition {
    key = "godly",
    shader = "godly",
    weight = 3,
    extra_cost = 10,
    config = {
        x_mult = 10
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.edition.x_mult } }
    end,

    calculate = function(self, card, context)
        if context.pre_joker or (context.main_scoring and context.cardarea == G.play) then
            return {
                x_mult = card.edition.x_mult
            }
        end
    end,

    cotc_credits = {
        shader = "Metanite64",
        code = "Amber N. Q."
    }
}
