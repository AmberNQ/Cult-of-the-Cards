CultCards = {
    shop_scale = 0.85
}

CultCards.Shop = {}

local menu = G.FUNCS.go_to_menu
G.FUNCS.go_to_menu = function(e)
    local ret = menu(e)
    CultCards.Shop.active_tab = nil
    return ret
end

local runstart = Game.start_run
Game.start_run = function(self, args)
    local ret = runstart(self, args)
    CultCards.Shop.active_tab = nil
    return ret
end

--[[function CultCards.Shop.currency_display()
    local jank = CultCards.Shop.currency_node( {
        symbol = localize('hotpot_reforge_credits'), font = SMODS.Fonts.hpot_plincoin, colour = G.C.PURPLE, ref_value = 'TNameCredits', ref_table = G.PROFILES[G.SETTINGS.profile], no_bump = true
    } )
    if G.GAME.seeded then
        jank = CultCards.Shop.currency_node( {
        symbol = localize('hotpot_reforge_budget'), font = SMODS.Fonts.hpot_plincoin, colour = G.C.ORANGE, ref_value = 'budget', ref_table = G.GAME, no_bump = true, id = 'TNameCredits'
    } )
    end
    return { n = G.UIT.R, config = { align = 'cm', colour = G.C.L_BLACK, r = 0.1, padding = 0.1 }, nodes = {
        CultCards.Shop.currency_node( {
            symbol = localize('$'), colour = G.C.GOLD, ref_value = 'dollars', no_bump = true
        } ),
        CultCards.Shop.currency_node( {
            symbol = '$', font = SMODS.Fonts.hpot_plincoin, colour = SMODS.Gradients["hpot_plincoin"], ref_value = 'plincoins'
        } ),
        CultCards.Shop.currency_node( {
            symbol = '£', font = SMODS.Fonts.hpot_plincoin, colour = SMODS.Gradients["hpot_advert"], ref_value = 'cryptocurrency'
        } ),
        CultCards.Shop.currency_node( {
            symbol = localize('hotpot_reforge_sparks'), font = SMODS.Fonts.hpot_plincoin, colour = G.C.BLUE, ref_value = 'spark_points', no_bump = true
        } ),
        jank, { n = G.UIT.C, config = { align = 'cm', minh = 0.6, minw = 0.6, outline = 1, outline_colour = G.C.BLUE, colour = G.C.DYN_UI.BOSS_MAIN, r = 0.1, padding = 0.05, hover = true, button = 'open_exchange', func = 'can_open_exchange', button_dist = 0.1, shadow = true, shadow_height = 0.25 }, nodes = {
            { n = G.UIT.O, config = { object = Sprite( 0, 0, 0.4, 0.4, G.ASSET_ATLAS['hpot_CultCards_shop_icons'], { x = 1, y = 0 } ) } },
        } }
    } }
end]]

function CultCards.Shop.tab_button(args)
    assert(type(args) == 'table', 'No table provided to shop_tab_button')
    --[[local notify = false
    if args.destination == "hotpot_jtem_toggle_delivery" then
        for _, obj in ipairs(G.GAME.hp_jtem_delivery_queue) do
            if obj.rounds_passed == obj.rounds_total then
                notify = true
                break
            end
        end
    end]]

    return { n = G.UIT.C, config = { align = 'bm' }, nodes = {
        { n = G.UIT.R, config = { align = 'tl', padding = 0.1, r = 0.1, colour = G.C.DYN_UI.MAIN, minh = 0.75, hover = true, func = 'shop_tab_active', button = 'toggle_shop_tab', destination = args.destination, id = 'hotpot_shop_tab_'..args.destination }, nodes = {
            { n = G.UIT.R, config = { align = 'cl' }, nodes = {
                { n = G.UIT.O, config = { object = Sprite( 0, 0, 0.4, 0.4, G.ASSET_ATLAS[args.atlas or 'cotc_modicon'], { x = args.x or 0, y = args.y or 0 } ) } },
                { n = G.UIT.T, config = { text = args.label or ' no label', colour = G.C.WHITE, scale = 0.35, shadow = true } },
                --[[{ n = G.UIT.C, config = { maxw = 0, maxh = 0, w = 0, h = 0, minw = 0, minh = 0 }, nodes = {
                    { n = G.UIT.O, config = { maxw = 0, maxh = 0, w = 0, h = 0, minw = 0, minh = 0,
                        object = UIBox{
                            definition = hp_jtem_create_UIBox_card_alert({ bg_col = G.C.RED }), 
                            config = { align= "tri", offset = {x = 0.3, y = -0.3}}
                        }
                    } },
                } }]]
            } },
        } }
    } }
end

--[[G.FUNCS.toggle_shop_tab = function(e)
    if CultCards.Shop.active_tab.exchange then
        CultCards.Shop.active_tab.exchange.config.colour = G.C.BLACK
    end
    CultCards.Shop.active_tab = e.config.id
    G.FUNCS[e.config.destination]()
end
]]

G.FUNCS.return_to_shop = function()
    CultCards.Shop.change_shop_sign("shop_sign")
    CultCards.Shop.change_shop_panel(CultCards.Shop.main_shop, CultCards.Shop.create_shop_areas, CultCards.Shop.reload_shop_areas, CultCards.Shop.area_keys.shop)
    ease_background_colour_blind(G.STATES.SHOP)
end

local shop = G.UIDEF.shop
function G.UIDEF.shop()
    CultCards.Shop.create_shop_areas()
    shop()
    CultCards.Shop.active_tab = 'cotc_shop_tab_return_to_shop'
    if G.GAME.modifiers.no_shop_jokers then
        return { n = G.UIT.ROOT, config = { align = 'cl', colour = G.C.CLEAR }, nodes = {
            { n = G.UIT.C, config = { align = 'cm' }, nodes = {
            -- Buttons across top of shop to swtich between different shop areas
                { n = G.UIT.R, config = { align = 'bl', minh = 0.8, colour = G.C.CLEAR, padding = -0.2 }, nodes = {
                    { n = G.UIT.B, config = { w = 0.92, h = 0.1 } },
                    CultCards.Shop.tab_button( {
                        --[[atlas = 'hpot_CultCards_shop_icons',]] destination = 'return_to_shop', label = ' Shop'
                    } ),
                    { n = G.UIT.B, config = { w = 0.67, h = 0.1 } },
                    CultCards.Shop.tab_button( {
                        atlas = 'hpot_tname_shop_reforge', destination = 'hotpot_tname_toggle_reforge', label = ' Tarot Mat'
                    } ),
                    { n = G.UIT.B, config = { w = 0.67, h = 0.1 } },
                    CultCards.Shop.tab_button( {
                        --[[atlas = 'hpot_horsechicot_market',]] destination = 'hotpot_horsechicot_toggle_market', label = ' Blacksmith'
                    } ),
                    { n = G.UIT.B, config = { w = 0.67, h = 0.1 } },
                    CultCards.Shop.tab_button( {
                        --[[atlas = 'hpot_CultCards_shop_icons',]] x = 2, destination = 'hotpot_CultCards_toggle_training', label = ' Temple'
                    } ),
                } },
                -- Main shop nodes
                { n = G.UIT.R, config = { align = 'cm', colour = G.C.DYN_UI.MAIN, padding = 0.08, r = 0.1 }, nodes = {
                    { n = G.UIT.C, config = { align = "cm", padding = 0.1, emboss = 0.05, r = 0.1, colour = G.C.DYN_UI.BOSS_MAIN }, nodes = {
                        -- Currency container
                        --CultCards.Shop.currency_display(),
                        -- spacer
                        { n = G.UIT.R, config = { minh = 0.2 } },
                        -- Top shop row
                        { n = G.UIT.R, config = { id = 'main_shop_body', align = 'cm' }, nodes = {
                            CultCards.Shop.main_shop()
                        } },
                        { n = G.UIT.R, config = { minh = 0.5 } },
                    } },
                } },
            } },
        } }
    end
    return { n = G.UIT.ROOT, config = { align = 'cl', colour = G.C.CLEAR }, nodes = {
        { n = G.UIT.C, config = { align = 'cm' }, nodes = {
            -- Buttons across top of shop to swtich between different shop areas
            { n = G.UIT.R, config = { align = 'bl', minh = 0.8, colour = G.C.CLEAR, padding = -0.2 }, nodes = {
                { n = G.UIT.B, config = { w = 0.75, h = 0.1 } },
                CultCards.Shop.tab_button( {
                    --[[atlas = 'hpot_CultCards_shop_icons',]] destination = 'return_to_shop', label = ' Shop'
                } ),
                { n = G.UIT.B, config = { w = 0.55, h = 0.1 } },
                CultCards.Shop.tab_button( {
                    --[[atlas = 'hpot_jtem_pkg',]] destination = 'hotpot_jtem_toggle_delivery', label = ' Deliveries'
                } ),
                { n = G.UIT.B, config = { w = 0.55, h = 0.1 } },
                CultCards.Shop.tab_button( {
                    --[[atlas = 'hpot_tname_shop_reforge',]] destination = 'hotpot_tname_toggle_reforge', label = ' Reforge'
                } ),
                { n = G.UIT.B, config = { w = 0.55, h = 0.1 } },
                CultCards.Shop.tab_button( {
                    --[[atlas = 'hpot_horsechicot_market',]] destination = 'hotpot_horsechicot_toggle_market', label = ' Blacksmith'
                } ),
                { n = G.UIT.B, config = { w = 0.55, h = 0.1 } },
                CultCards.Shop.tab_button( {
                    --[[atlas = 'hpot_CultCards_shop_icons',]] x = 2, destination = 'hotpot_CultCards_toggle_training', label = ' Temple'
                } ),
            } },
            -- Main shop nodes
            { n = G.UIT.R, config = { align = 'cm', colour = G.C.DYN_UI.MAIN, padding = 0.08, r = 0.1 }, nodes = {
                { n = G.UIT.C, config = { align = "cm", padding = 0.1, emboss = 0.05, r = 0.1, colour = G.C.DYN_UI.BOSS_MAIN }, nodes = {
                    -- Currency container
                    --CultCards.Shop.currency_display(),
                    -- spacer
                    { n = G.UIT.R, config = { minh = 0.2 } },
                    -- Top shop row
                    { n = G.UIT.R, config = { id = 'main_shop_body', align = 'cm' }, nodes = {
                        CultCards.Shop.main_shop()
                    } },
                    { n = G.UIT.R, config = { minh = 0.5 } },
                } }
            } }
        } }
    } }
end

function CultCards.Shop.main_shop()
    -- Reroll button for unknown goddamn reason just stuck, so I'll unstuck it
    G.E_MANAGER:add_event(Event({
        blocking = false,
        no_delete = true,
        func = function()
            local reroll = G.shop and G.shop:get_UIE_by_ID('shop_reroll')
                if reroll and reroll.UIBox then
                reroll.UIBox:recalculate()
            end
            return true
        end,
    }))
    return
    {n=G.UIT.C, nodes = {
        {n=G.UIT.R, config={align = "cm", padding = 0.05}, nodes={
            {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                {n=G.UIT.R,config={id = 'next_round_button', align = "cm", minw = 1.8, minh = 1.3, r=0.15,colour = G.C.RED, one_press = true, button = 'toggle_shop', hover = true,shadow = true}, nodes = {
                    {n=G.UIT.R, config={align = "cm", padding = 0.07, focus_args = {button = 'y', orientation = 'cr'}, func = 'set_button_pip'}, nodes={
                        {n=G.UIT.R, config={align = "cm", maxw = 1.3}, nodes={
                            {n=G.UIT.T, config={text = localize('b_next_round_1'), scale = 0.4, colour = G.C.WHITE, shadow = true}}
                        }},
                        {n=G.UIT.R, config={align = "cm", maxw = 1.3}, nodes={
                            {n=G.UIT.T, config={text = localize('b_next_round_2'), scale = 0.4, colour = G.C.WHITE, shadow = true}}
                        }}
                    }},
                }},
                {n=G.UIT.R, config={id = 'shop_reroll', align = "cm", minw = 1.8, minh = 1.3, r=0.15,colour = G.C.GREEN, button = 'reroll_shop', func = 'can_reroll', hover = true,shadow = true}, nodes = {
                    {n=G.UIT.R, config={align = "cm", padding = 0.07, focus_args = {button = 'x', orientation = 'cr'}, func = 'set_button_pip'}, nodes={
                        {n=G.UIT.R, config={align = "cm", maxw = 1.3}, nodes={
                            {n=G.UIT.T, config={text = localize('k_reroll'), scale = 0.4, colour = G.C.WHITE, shadow = true}},
                        }},
                        {n=G.UIT.R, config={align = "cm", maxw = 1.3, minw = 1}, nodes={
                            {n=G.UIT.T, config={text = localize('$'), scale = 0.7, colour = G.C.WHITE, shadow = true}},
                            {n=G.UIT.T, config={ref_table = G.GAME.current_round, ref_value = 'reroll_cost', scale = 0.75, colour = G.C.WHITE, shadow = true}},
                        }}
                    }}
                }},
            }},
            {n=G.UIT.C, config={align = "cm", padding = 0.2, r=0.2, colour = G.C.L_BLACK, emboss = 0.05, minw = 8.0}, nodes={
                {n=G.UIT.O, config={object = G.shop_jokers}},
            }},
            {n=G.UIT.C, config = {align='cm', padding = 0.1}, nodes = {
                {n=G.UIT.R, config={align = "cm", minw = 0.5, maxw = 0.7, minh = 0.8, r=0.15,colour = G.C.CLEAR, id = "show_plinko_button", button = 'open_plinko', shadow = true}, nodes = {
                    {n=G.UIT.O, config = {object = Sprite(0, 0, 0.9, 0.9, G.ASSET_ATLAS['hpot_CultCards_shop'], { x = 0, y = 0 }), shadow = true, hover = true, button_dist = 0.63}},
                }},

                {n=G.UIT.R, config={align = "cm", minw = 0.5, maxw = 0.7, minh = 0.8, r=0.15,colour = G.C.CLEAR, id = "show_wheel_button", button = 'open_wheel', shadow = true}, nodes = {
                    {n=G.UIT.O, config = {object = Sprite(0, 0, 0.9, 0.9, G.ASSET_ATLAS['hpot_CultCards_shop'], { x = 1, y = 0 }), shadow = true, hover = true, button_dist = 0.63}},
                }},

                {n=G.UIT.R, config={align = "cm", minw = 0.5, maxw = 0.7, minh = 0.8, r=0.15,colour = G.C.CLEAR, id = "show_nursery_button", button = 'open_nursery', shadow = true}, nodes = {
                    {n=G.UIT.O, config = {object = Sprite(0, 0, 0.9, 0.9, G.ASSET_ATLAS['hpot_CultCards_shop'], { x = 2, y = 0 }), shadow = true, hover = true, button_dist = 0.63}},
                    (to_number(G.GAME.breeding_rounds_passed) >= (G.GAME.quick_preggo and 2 or 3)) and {
                        n=G.UIT.C,
                        config = { maxw = 0, maxh = 0, w = 0, h = 0, minw = 0, minh = 0 },
                        nodes={
                            {n=G.UIT.O, config = {
                                maxw = 0, maxh = 0, w = 0, h = 0, minw = 0, minh = 0,
                                object = UIBox{
                                    definition = hp_jtem_create_UIBox_card_alert({ bg_col = G.C.RED }), 
                                    config = { align= "tri", offset = {x = 0.2, y = -0.2}}
                                }
                            }},
                        }
                    }
                }},
            }}
        }},
        -- spacer
        {n=G.UIT.R, config={minh = 0.1}},
        -- bottom shop row
        {n=G.UIT.R, config={align = "cm", padding = 0.1}, nodes={
            {n=G.UIT.C, config={align = "cm", padding = 0.15, r=0.2, colour = G.C.L_BLACK, emboss = 0.05}, nodes={
                {n=G.UIT.C, config={align = "cm", padding = 0.2, r=0.2, colour = G.C.BLACK, maxh = G.shop_vouchers.T.h+0.4}, nodes={
                    {n=G.UIT.T, config={text = localize{type = 'variable', key = 'ante_x_voucher', vars = {G.GAME.round_resets.ante}}, scale = 0.45, colour = G.C.L_BLACK, vert = true}},
                    {n=G.UIT.O, config={object = G.shop_vouchers}},
                }},
            }},
            {n=G.UIT.C, config={align = "cm", padding = 0.15, r=0.2, colour = G.C.L_BLACK, emboss = 0.05}, nodes={
                {n=G.UIT.O, config={object = G.shop_booster}},
            }},
        }}
    }}
end

function CultCards.Shop.create_shop_areas()
    G.shop_jokers = CardArea(
        G.hand.T.x+0,
        G.hand.T.y+G.ROOM.T.y + 9,
        math.min(G.GAME.shop.joker_max*1.02*G.CARD_W,3.6*G.CARD_W),
        1.15*G.CARD_H * CultCards.shop_scale,
        {card_limit = G.GAME.shop.joker_max, type = 'shop', highlight_limit = 1, negative_info = true, hotpot_shop = true}
    )

    G.shop_vouchers = CardArea(
        G.hand.T.x+0,
        G.hand.T.y+G.ROOM.T.y + 9,
        2.1*G.CARD_W,
        1.05*G.CARD_H * CultCards.shop_scale,
        {card_limit = 1, type = 'shop', highlight_limit = 1, hotpot_shop = true}
    )

    G.shop_booster = CardArea(
        G.hand.T.x+0,
        G.hand.T.y+G.ROOM.T.y + 9,
        2.4*G.CARD_W,
        1.15*G.CARD_H * CultCards.shop_scale,
        {card_limit = 2, type = 'shop', highlight_limit = 1, card_w = 1.22*G.CARD_W, hotpot_shop = true}
    )
end