-- Blessed Dice --

SMODS.Consumable {
    key = "laplace_B",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 3, y = 1 },
    cost = 10,
    config = {
        extra = {
            odds = 2,
            xblind = 0.1,
            discards = 1
        }
    },

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'cotc_relic_laplace')
		return {
            vars = {
                numerator,
                denominator,
                card.ability.extra.xblind,
                card.ability.extra.discards
            }
        }
    end,

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,

    use = function(self, card, context)
        if SMODS.pseudorandom_probability(card, 'cotc_relic_laplace', 1, card.ability.extra.odds) then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    play_sound('timpani')
                    G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.xblind
    		    	G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
	    		    SMODS.juice_up_blind()
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        else
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    ease_discard(card.ability.extra.discards)
                    play_sound('timpani')
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.8)

        if G.GAME.chips >= G.GAME.blind.chips then
			G.STATE = G.STATES.HAND_PLAYED
			G.STATE_COMPLETE = true
			end_round()
		end
    end,

    can_use = function(self, card) return G.STATE == G.STATES.SELECTING_HAND and G.GAME.chips < G.GAME.blind.chips end
}

-- Damned Dice --

SMODS.Consumable {
    key = "laplace_D",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 4, y = 1 },
    cost = 8,
    config = {
        extra = {
            odds = 2,
            hands = 1,
            xblind = 0.9
        }
    },

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'cotc_relic_laplace')
		return {
            vars = {
                numerator,
                denominator,
                card.ability.extra.hands,
                card.ability.extra.xblind
            }
        }
    end,

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,

    use = function(self, card)
		if SMODS.pseudorandom_probability(card, 'cotc_relic_laplace', 1, card.ability.extra.odds) then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    ease_hands_played(card.ability.extra.hands)
                    play_sound('timpani')
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        else
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    play_sound('timpani')
                    G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.xblind
    		    	G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
	    		    SMODS.juice_up_blind()
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
		end
        delay(0.8)

		if G.GAME.chips >= G.GAME.blind.chips then
			G.STATE = G.STATES.HAND_PLAYED
			G.STATE_COMPLETE = true
			end_round()
		end
	end,
	
	can_use = function(self, card) return G.STATE == G.STATES.SELECTING_HAND and G.GAME.chips < G.GAME.blind.chips end,
}

-- Default Dice --

SMODS.Consumable {
    key = "laplace",
    set = "cotc_Relics",
    atlas = 'relic', 
    pos = { x = 5, y = 1 },
    cost = 5,
    config = {
        extra = {
            odds = 2,
            hands = 1,
            discards = 1
        }
    },

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'cotc_relic_laplace')
		return {
            vars = {
                numerator,
                denominator,
                card.ability.extra.hands,
                card.ability.extra.discards
            }
        }
    end,

    use = function(self, card, context)
        if SMODS.pseudorandom_probability(card, 'cotc_relic_laplace', 1, card.ability.extra.odds) then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    ease_hands_played(card.ability.extra.hands)
                    play_sound('timpani')
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        else
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    ease_discard(card.ability.extra.discards)
                    play_sound('timpani')
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.8)
    end,

    can_use = function(self, card) return G.STATE == G.STATES.SELECTING_HAND end
}