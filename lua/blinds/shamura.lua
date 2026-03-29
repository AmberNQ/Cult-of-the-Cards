SMODS.Blind{
    atlas = 'blind',
    key = 'shamura',
    pos = { y = 3 },
    discovered = false,
    boss = { showdown = true },
    boss_colour = HEX('8620B5'),
    mult = 2,
    dollars = 8,

    get_loc_debuff_text = function(self)
        return G.GAME.blind.loc_debuff_text
    end,

    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_hand then
                local faces = {}
                for k, v in pairs(context.full_hand) do
                    if v:is_face(true) then
                        table.insert(faces, v)
                    end
                    if v:is_face(false) then
                        blind.triggered = false
                    end
                end
                local passed = false
                for k, v in pairs(faces) do
                    if not v:is_suit(faces[1].base.suit, true) then
                        passed = true
                    end
                end
                if passed then
                    blind.triggered = true
                    return { debuff = true }
                end
            end
        end
    end,
    
    defeat = function(self)
        if G.GAME.current_round.discards_used == 0 then
            check_for_unlock({ type = "cotc_peace_unlock" })
        end
    end
}