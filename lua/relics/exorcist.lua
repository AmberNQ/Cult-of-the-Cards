-- Blessed Finger --

SMODS.Consumable {
    key = "exorcist_B",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 0, y = 3 },
    cost = 10,

    use = function(self, card, area, copier)
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            func = (function()
                SMODS.add_card { set = 'Spectral' }
                G.GAME.consumeable_buffer = 0
                return true
            end)
        }))
        return {
            message = localize('k_plus_spectral'),
            colour = G.C.SECONDARY_SET.Spectral
        }
    end,

    can_use = function(self, card) return G.GAME.consumeable_buffer < G.consumeables.config.card_limit end,

    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_blessing"] end,
}

-- Damned Finger --

SMODS.Consumable {
    key = "exorcist_D",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 1, y = 3 },
    cost = 10,

    use = function(self, card, area, copier)
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            func = (function()
                SMODS.add_card { set = 'cotc_Tarot' }
                G.GAME.consumeable_buffer = 0
                return true
            end)
        }))
        return {
            message = localize('k_plus_spectral'),
            colour = G.C.SECONDARY_SET.Spectral
        }
    end,

    can_use = function(self, card) return G.GAME.consumeable_buffer < G.consumeables.config.card_limit end,
    
    in_pool = function(self, args) return G.GAME.used_vouchers["v_cotc_damnation"] end,
}

-- Default Finger --

SMODS.Consumable {
    key = "exorcist",
    set = "cotc_Relic",
    atlas = 'relic',
    pos = { x = 0, y = 11 }, soul_pos = { x = 2, y = 3 },
    cost = 10,

    use = function(self, card, area, copier)
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            func = (function()
                SMODS.add_card { set = 'Tarot' }
                G.GAME.consumeable_buffer = 0
                return true
            end)
        }))
        return {
            message = localize('k_plus_spectral'),
            colour = G.C.SECONDARY_SET.Spectral
        }
    end,

    can_use = function(self, card) return G.GAME.consumeable_buffer < G.consumeables.config.card_limit end,
}