local ritual = SMODS.Joker {
    key = 'resurrection',
    atlas = 'joker',
	pos = { x = 1, y = 0 }, soul_pos = { x = 0, y = 0 },
    set_badges = function(self, card, badges) if (self.discovered) then
        badges[#badges+1] = slimeutils.table_create_badge(cotc_badges.TC)
	end end,
    rarity = 3,
    cost = 10,
    config = {
        extra = {
            used = false
        }
    },

    calculate = function(self, card, context)
        if context.end_of_round and context.beat_boss then
            card.ability.extra.used = false
        end
    end
}

ritual.slime_active = {
	calculate = function(self, card)
        G.FUNCS.overlay_menu({ definition = create_UIbox_ritual() })
	end,
	can_use = function(self, card)
        return not card.ability.extra.used
    end,
	should_close = function(self, card) return true end
}

-- Spawn used cards
local function ritual_create_jokers()
    for i = 1, 2 -#G.cotc_ritual_jokers_list.cards do
		local new_shop_card = SMODS.create_card({ 
            set = "Joker",
            area = G.cotc_ritual_jokers_list,
            skip_materialize = true,
            bypass_discovery_center = true
        })
		G.cotc_ritual_jokers_list:emplace(new_shop_card)
		create_shop_card_ui(new_shop_card)
		new_shop_card:juice_up()
	end
end

-- Menu UI
function create_UIbox_ritual()
    G.cotc_ritual_jokers_list = CardArea(
		G.hand.T.x,
		G.hand.T.y + G.ROOM.T.y + 9,
		2.1 * G.CARD_W,
		1.05 * G.CARD_H, 
		{ card_limit = 2, type = 'shop', highlight_limit = 1, negative_info = true }
    )

    ritual_create_jokers()

	return create_UIBox_generic_options({
		no_back = true,
		contents = {
			{ n = G.UIT.R, config = { align = "cm" }, nodes = {                             -- Title box
				{ n = G.UIT.C, config = { align = "cm", colour = G.C.BLACK, padding = 0.2, r = 0.1 }, nodes = {
					{ n = G.UIT.R, config = { align = "cm" }, nodes = {
						{ n = G.UIT.T, config = { text = localize("cotc_ritual_title"), colour = G.C.WHITE, scale=0.5 } }
                    } },
				} }
			} },
			{ n = G.UIT.R, config = { align="cm" }, nodes = {                               -- Joker Area
				{ n = G.UIT.C, config = { align = "cm", padding = .1 }, nodes = {
					{ n = G.UIT.R, config = { align = "cm", colour = G.C.BLACK, padding = .1, r = .1, emboss = .1}, nodes = {
						{ n = G.UIT.R, config = { align = "cm", padding = 0.15 }, nodes = {
                            {n=G.UIT.O, config={object = G.cotc_ritual_jokers_list}},
						} },
					} }
				} }
			} },
            { n = G.UIT.R, config = { align = "cm", padding = 0.15 }, nodes = {             -- Exit button
                UIBox_button({ button = "exit_overlay_menu", label = { "Exit" }, minh=.8, minw=2.5, colour = G.C.RED })
            } }
		}
	})
end