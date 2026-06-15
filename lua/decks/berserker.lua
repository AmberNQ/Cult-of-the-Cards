SMODS.Back{
    key = "berserk",
    atlas = "deck",
    pos = { x = 1, y = 1 },
    unlocked = false,
    config = { xmult = 10, hands = 0.5, discards = 0 },

    apply = function(self, back)
        G.GAME.starting_params.hands = self.config.hands
        G.GAME.starting_params.discards = self.config.discards
    end,

    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.xmult, self.config.hands + 0.5, self.config.discards } }
    end,

    calculate = function (self, back, context)
        if context.final_scoring_step then
            return {
                xmult = G.GAME.selected_back.effect.config.xmult
            }
        end
    end,

    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 20 } }
    end,

    check_for_unlock = function(self, args)
        return args.type == 'ante_up' and args.ante == 16
    end
}

--[[if CardSleeves then
	CardSleeves.Sleeve({
		key = "berserk",
		atlas = "sleeve",
		pos = { x = 1, y = 1 },
        config = { xmult = 10, hands = 1, discards = 0 },
		unlocked = false,
		unlock_condition = {deck = "b_cotc_gold", stake = "stake_white"},

        apply = function(self, back)
            G.GAME.starting_params.hands = self.config.hands
            G.GAME.starting_params.discards = self.config.discards
        end,

		loc_vars = function(self)
            local key
            if self.get_current_deck_key() == "b_cotc_berserk" then
                key = self.key .. "_alt"
            else
                key = self.key
            end
            return { key = key, vars = { self.config.xmult, self.config.hands, self.config.discards } }
        end,

        calculate = function (self, sleeve, context)
            if context.final_scoring_step then
                return {
                    xmult = sleeve.config.xmult
                }
            end
        end
	})
end]]