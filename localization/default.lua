return {
    descriptions = {
        Back = {},
        Blind = {
            bl_cotc_leshy = {
                name = "Chaos",
                text = {
                    "Hand gets reshuffled",
                    "after each played hand"
                }
            },
            bl_cotc_heket = {               --sets hand level to 1
                name = "Famine",
                text = {
                    "Nullifies level of",
                    "played poker hand"
                }
            },
            bl_cotc_kallamar = {
                name = "Pestilence",
                text = {
                    "Discarding uses",
                    "one hand"
                }
            },
            bl_cotc_shamura = {
                name = "Conquest",
                text = {
                    "Only play face cards",
                    "of the same suit"
                }
            },
            bl_cotc_narinder = {
                name = "Death",
                text = {
                    "1 in 4 held cards get",
                    "destroyed after each",
                    "played hand"
                }
            },
            bl_cotc_hagar = {
                name = "The Executioner",
                text = {
                    "Please... spare me..."
                }
            },
            bl_cotc_marchosias = {
                name = "Mad Scientist",
                text = {
                    "idk yet"
                }
            },
            bl_cotc_yngya = {
                name = "Frost",
                text = {
                    "1 in 2 held cards",
                    "will freeze"
                }
            }
        },
        Edition = {
            e_cotc_bane = {
                name = "Bane",
                text = {
                    "{C:green}#1# in #2#{} chance of",
                    "{X:attention,C:white}X#3#{} blind requirements"
                }
            },
            e_cotc_godly = {
                name = "Godly",
                text = { "{X:mult,C:white}X#1#{} Mult" }
            },
            e_cotc_merciless = {
                name = "Merciless",
                text = {
                    "{C:green}1 in 3{} chance of",
                    "{X:mult,C:white}X5{} Mult"
                }
            },
            e_cotc_necro = {
                name = "Necromatic",
                text = {
                    "{C:green}1 in 5{} chance to",
                    "add previous blind's",
                    "requirement to chips"
                }
            },
            e_cotc_vampiric = {
                name = "Vampiric",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "permanently gain {C:blue}+#3#{} hand",
                    "when blind is defeated"
                }
            },
            e_cotc_zealous = {
                name = "Zealous",
                text = {
                    "{C:gold}$5{} for each",
                    "discard used",
                }
            },
        },
        Enhanced = {},
        Joker = {
            j_cotc_lamb = {
                name = "The Lamb",
                text = {
                    "idk yet"
                }
            },
            j_cotc_leshy = {
                name = "Leshy",
                text = {
                    "idk yet"
                }
            }
        },
        Other = {
            undiscovered_cotc_relics = {
                name = "Not Discovered",
                text = {
                    "Purchase or use",
                    "this relic in an",
                    "unseeded run to",
                    "learn what it does"
                }
            }
        },
        Planet = {},
        Spectral = {},
        cotc_Relics = {
            c_cotc_balm = {
                name = "Balm of the Anchorite",
                text = {
                    "For every 2 Jokers,",
                    "gain +1 hand.",
                    quote.."A balm of faith and rosemary."
                }
            },
            c_cotc_balm_B = {
                name = {
                    "{C:blue}Blessed",
                    "Balm of the Anchorite"
                },
                text = {
                    "For every Uncommon Joker,",
                    "gain +1 hand.",
                    quote.."They shall never leave us."
                }
            },
            c_cotc_balm_D = {
                name = {
                    "{C:red}Damned",
                    "Balm of the Anchorite"
                },
                text = {
                    "For every Rare Joker,",
                    "gain +1 hand.",
                    quote.."Even doubt may have its use."
                }
            },
            c_cotc_beads = {
                name = "Beads of the Anchorite",
                text = {
                    "X0.1 Base Mult based on",
                    "how many Jokers you have.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Each bead whispers a name..."
                }
            },
            c_cotc_beads_B = {
                name = {
                    "{C:blue}Blessed",
                    "Beads of the Anchorite"
                },
                text = {
                    "X0.1 Base Mult based on",
                    "how many Jokers you have.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Wisdom, calcified."
                }
            },
            c_cotc_beads_D = {
                name = {
                    "{C:red}Damned",
                    "Beads of the Anchorite"
                },
                text = {
                    "X0.1 Base Mult based on",
                    "how many Jokers you have.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Those who would question, be strung."
                }
            },
            c_cotc_hair = {
                name = "Clauneck's Hair",
                text = {
                    "X0.1 Base Mult based on",
                    "the amount of Tarot cards",
                    "you've used this run.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Feathered and fortuitous."
                }
            },
            c_cotc_hair_B = {
                name = {
                    "{C:blue}Blessed",
                    "Clauneck's Hair"
                },
                text = {
                    "X0.1 Base Mult based on",
                    "the amount of Tarot cards",
                    "you've used this run.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Plumage of luck and grace."
                }
            },
            c_cotc_hair_D = {
                name = {
                    "{C:red}Damned",
                    "Clauneck's Hair"
                },
                text = {
                    "X0.1 Base Mult based on",
                    "the amount of Tarot cards",
                    "you've used this run.",
                    "{C:inactive}(Currently: X0.1 Mult)",
                    quote.."Cruel fortune, be kind to me."
                }
            },
            c_cotc_idol = {
                name = {
                    "Idol of the",
                    "Immolated",
                },
                text = {
                    "Replace all discards with hands.",
                    quote.."Covered in soot and yet unburned."
                }
            },
            c_cotc_laplace = {
                name = "Laplace's Dice",
                text = {
                    "{C:green}#1# in #2#{} chance of {C:blue}+#3#{} hand",
                    "or {C:red}+#4#{} discard",
                    quote.."Worn on each side, roll with care."
                }
            },
            c_cotc_laplace_B = {
                name = {
                    "{C:blue}Blessed",
                    "Laplace's Dice"
                },
                text = {
                    "{C:green}#1# in #2#{} chance of {X:attention,C:white}X#3#{}",
                    "blind requirements",
                    "or {C:red}+#4#{} discard",
                    quote.."What did the great gambler lose?"
                }
            },
            c_cotc_laplace_D = {
                name = {
                    "{C:red}Damned",
                    "Laplace's Dice"
                },
                text = {
                    "{C:green}#1# in #2#{} chance of {C:blue}+#3#{} hand",
                    "or {X:attention,C:white}X#4#{} blind requirements",
                    quote.."Let the river of chance flow smooth."
                }
            },
            c_cotc_mirror = {
                name = "Clauneck's Mirror",
                text = {
                    "Destroy all Jokers.",
                    "increases level of random hand",
                    "per destroyed Joker.",
                    quote.."The face that stares back; yours, and yet not."
                }
            },
            c_cotc_mirror_B = {
                name = {
                    "{C:blue}Blessed",
                    "Clauneck's Mirror"
                },
                text = {
                    "Destroy all Jokers.",
                    "increases level of random hand",
                    "per destroyed Joker.",
                    quote.."Borrow from tomorrow's fortune."
                }
            },
            c_cotc_mirror_D = {
                name = {
                    "{C:red}Damned",
                    "Clauneck's Mirror"
                },
                text = {
                    "Destroy all Jokers.",
                    "increases level of random hand",
                    "per destroyed Joker.",
                    quote.."Agony of the past, serve me in the present."
                }
            },
        },
        Stake = {},
        Tag = {},
        Tarot = {},
        Voucher = {
            v_cotc_blessing = {
                name = {
                    "Blessing of",
                    "the Relics"
                },
                text = {
                    "{C:blue}Blessed Relics{} can",
                    "be purchased",
                    "from the {C:attention}shop"
                }
            },
            v_cotc_damnation = {
                name = {
                    "Damnation of",
                    "the Relics"
                },
                text = {
                    "{C:red}Damned Relics{} can",
                    "be purchased",
                    "from the {C:attention}shop"
                }
            }
        },
    },
    misc = {
        achievement_descriptions = {
            ach_cotc_cold_hearted = "Show no mercy...",
            ach_cotc_cure = "Defeat Pestilence without using discards.",
            ach_cotc_godhood = { "No longer a servant,", "no less than a God." },
            ach_cotc_order = "Defeat Chaos without using discards.",
            ach_cotc_peace = "Defeat War without using discards.",
            ach_cotc_sate = "Defeat Famine without using discards.",
            ach_cotc_sins_forgiven = "Absolve The Executioner."
        },
        achievement_names = {
            ach_cotc_cold_hearted = "Cold Hearted",
            ach_cotc_cure = "Cure",
            ach_cotc_godhood = "Godhood",
            ach_cotc_order = "Order",
            ach_cotc_peace = "Peace",
            ach_cotc_sate = "Sate",
            ach_cotc_sins_forgiven = "Thy Sins Forgiven"
        },
        blind_states = {},
        challenge_names = {},
        collabs = {},
        dictionary = {
            b_cotc_relics_cards = "Relics",
            k_cotc_relics = "Relic",
            ph_cotc_mercy = "What kind of God are you...?",
        },
        high_scores = {},
        labels = {
            cotc_bane = "Bane",
            cotc_godly = "Godly",
            cotc_merciless = "Merciless",
            cotc_necro = "Necromatic",
            cotc_vampiric = "Vampiric",
            cotc_zealous = "Zealous"
        },
        poker_hand_descriptions = {},
        poker_hands = {},
        quips = {},
        ranks = {},
        suits_plural = {},
        suits_singular = {},
        tutorial = {},
        v_dictionary = {},
        v_text = {},
    }
}