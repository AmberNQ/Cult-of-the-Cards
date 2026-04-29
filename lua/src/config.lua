local config = SMODS.current_mod.config

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT, config = {
            r = 0.1,
            align = "cm",
            padding = 0.2,
            colour = G.C.BLACK 
        }, nodes = {
            { n = G.UIT.R, config = {
                r = 0.1,
                align = "cm",
                padding = 0.2,
                colour = G.C.L_BLACK 
            }, nodes = {
                { n = G.UIT.C, config = {
                    align = "cm",
                    padding = 0.1
                }, nodes = {
                    create_toggle( {
                        label = localize("cotc_dlc_toggle"),
                        ref_table = config,
                        ref_value = "dlc_toggle",
                        info = localize("cotc_dlc_toggle_desc")
                    } )
                } }
            } }
        }
    }
end