SMODS.Back{
    key = "gold2",
    atlas = "deck",
    pos = { x = 0, y = 0 },
    unlocked = true,
    config = { mult = 0, mult_mod = 5, ante_scaling = 2 },

    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.mult_mod, self.config.mult, self.config.ante_scaling, G.GAME.selected_back.effect.config.mult or 0 } }
    end,

    calculate = function (self, back, context)
        if context.setting_blind then
            G.GAME.selected_back.effect.config.mult = G.GAME.selected_back.effect.config.mult + G.GAME.selected_back.effect.config.mult_mod
            return {
                message = "+"..G.GAME.selected_back.effect.config.mult_mod.." Mult",
                colour = G.C.MULT
            }
        end
        if context.skip_blind and G.GAME.selected_back.effect.config.mult > 0 then
            G.GAME.selected_back.effect.config.mult = 0
            return {
                message = "Reset!"
            }
        end
        if context.final_scoring_step then
            return {
                mult = G.GAME.selected_back.effect.config.mult
            }
        end
    end
}

--[[if CardSleeves then
	CardSleeves.Sleeve({
		key = "gold",
		atlas = "sleeve",
		pos = { x = 0, y = 0 },
        config = { mult = 0, mult_mod = 5, ante_scaling = 2 },
		unlocked = false,
		unlock_condition = {deck = "b_cotc_gold", stake = "stake_white"},

		loc_vars = function(self)
            local key
            if self.get_current_deck_key() == "b_cotc_gold" then
                key = self.key .. "_alt"
            else
                key = self.key
            end
            return { key = key, vars = { self.config.mult_mod, self.config.mult, self.config.ante_scaling } }
        end,

        calculate = function(self, sleeve, context)
            if context.setting_blind then
                sleeve.config.mult = sleeve.config.mult + sleeve.config.mult_mod
                return {
                    message = "+"..sleeve.config.mult_mod.." Mult",
                    colour = G.C.MULT
                }
            end
            if context.skip_blind and sleeve.config.mult > 0 then
                sleeve.config.mult = 0
                return {
                    message = "Reset!"
                }
            end
            if context.final_scoring_step then
                return {
                    mult = sleeve.config.mult
                }
            end
        end
	})
end]]