--[[
IMPORTANT MESSAGE TO TRANLATORS:
remember to add your name in the mod credits when you are done. you can find it in the main.lua file,
right under the "main mod tab" comment. from there, find "Main Credits", "Middle Collumn", and the line with your language.

thanks a million for your help :3
]]

return {
    descriptions = {
        Back = {
            b_cotc_gold2 = {
                name = "Golden Deck",
                text = {
                    "{C:mult}+#1#{} Mult for each",
                    "consecutive {C:attention}Blind{},",
                    "resets if Blind is {C:attention}skipped",
                    "{X:mult,C:white}X#3#{} base Blind size",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            b_cotc_berserk = {
                name = "Deck of the Berserker",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "start with {C:blue}#2#{} hand",
                    "and {C:red}#3#{} discards"
                },
                unlock = {
                    "Reach Ante",
                    "level {E:1,C:attention}#1#",
                },
            }
        },
        Sleeve = {
            sleeve_cotc_gold = {
                name = "Golden Sleeve",
                text = {
                    "{C:mult}+#1#{} Mult for each",
                    "consecutive {C:attention}Blind{},",
                    "resets if Blind is {C:attention}skipped",
                    "{X:mult,C:white}X#3#{} base Blind size",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            sleeve_cotc_gold_alt = {
                name = "Golden Sleeve",
                text = { 
                    "Nothing creative here,",
                    "any suggestions appreciated"
                }
            },
            sleeve_cotc_berserk = {
                name = "Sleeve of the Berserker",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "start with {C:blue}#2#{} hand",
                    "and {C:red}#3#{} discards"
                }
            },
            sleeve_cotc_berserk_alt = {
                name = "Sleeve of the Berserker",
                text = { 
                    "Nothing creative here,",
                    "any suggestions appreciated"
                }
            }
        },
        Blind = {
            bl_cotc_leshy = {
                name = "Chaos",
                text = {
                    "scored cards turn a",
                    "random rank"
                }
            },
            bl_cotc_heket = {
                name = "Famine",
                text = {
                    "Nullifies level of",
                    "played poker hand"
                }
            },
            bl_cotc_kallamar = {
                name = "Pestilence",
                text = {
                    "Discards use 1 hand"
                }
            },
            bl_cotc_shamura = {
                name = "Conquest",
                text = {
                    "Must play face cards",
                    "of the same suit"
                }
            },
            bl_cotc_narinder = {
                name = "Death",
                text = {
                    "Destroy 4 random",
                    "cards per hand played"
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
                    "Inverses scored cards"
                }
            },
            bl_cotc_yngya = {
                name = "Frost",
                text = {
                    "Freeze 2 random",
                    "cards per hand played"
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
                    "{C:green}#1# in #2#{} chance of",
                    "{X:mult,C:white}X#3#{} Mult"
                }
            },
            e_cotc_necro = {
                name = "Necromantic",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add previous {C:attention}blind's",
                    "requirement to {C:chips}chips",
                    "at start of round"
                }
            },
            e_cotc_vampiric = {
                name = "Vampiric",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "permanently gain {C:blue}+#3#{} hand",
                    "when {C:attention}blind{} is defeated"
                }
            },
            e_cotc_zealous = {
                name = "Zealous",
                text = {
                    "{C:gold}$#1#{} for each",
                    "{C:red}discard{} used",
                }
            },
        },
        Enhanced = {},
        Joker = {
            j_cotc_joker = {
                name = "The Joker",
                text = {
                    "{C:attention}Gain or lose {C:blue}#1#{} hand",
                    "when starting round",
                    quote.."A fickle win or fickle loss."
                }
            },
            j_cotc_lamb = {
                name = "The Lamb",
                text = {
                    "idk yet"
                }
            },
            j_cotc_resurrection = {
                name = { "Ritual of", "Resurrection" },
                text = {
                    "{C:attention}Once per Ante{}, bring",
                    "a sold or destroyed Joker",
                    "back to your {C:attention}hand"
                }
            }
        },
        Other = {
            p_cotc_temple = {
                name = "Temple Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:chemach}Relics{}"
                },
            },
            p_cotc_temple_jumbo = {
                name = {
                    "Jumbo Temple Pack"
                },
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:chemach}Relics{}"
                },
            },
            p_cotc_temple_mega = {
                name = {
                    "Mega Temple Pack"
                },
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:chemach}Relics{}"
                },
            },
            p_cotc_pelt = {
                name = {
                    "Premonition Pack"
                },
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:clauneck}Pelt Tarot{} cards"
                },
            },
            p_cotc_pelt_jumbo = {
                name = {
                    "Jumbo Premonition Pack"
                },
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:clauneck}Pelt Tarot{} cards"
                },
            },
            p_cotc_pelt_mega = {
                name = {
                    "Mega Premonition Pack"
                },
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# {C:clauneck}Pelt Tarot{} cards"
                },
            },
            undiscovered_cotc_tarot = {
                name = "Not Discovered",
                text = {
                    "Purchase or use",
                    "this card in an",
                    "unseeded run to",
                    "learn what it does"
                }
            },
            undiscovered_cotc_relic = {
                name = "Not Discovered",
                text = {
                    "Purchase or use",
                    "this Relic in an",
                    "unseeded run to",
                    "learn what it does"
                }
            },
        },
        Planet = {},
        Spectral = {},
        cotc_Tarot = {
            c_cotc_boon = {
                name = "Nature's Boon",
                text = {
                    "Gain {X:mult,C:white}X#1#{} Mult for",
                    "each {C:gold}$1{} you have.",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                    quote.."Your cornucopia runneth over."
                }
            },
            c_cotc_death = {
                name = "Death's Door",
                text = {
                    "{X:mult,C:white}X#1#{} Mult on {C:attention}final",
                    "{C:attention}hand{} of round",
                    quote.."Hope to be turned away."
                }
            },
            c_cotc_hand = {
                name = "Hands of Rage",
                text = {
                    "{C:attention}+#1#{} hand size",
                    quote.."Such violent wrath cannot be contained."
                }
            },
            c_cotc_hearts = {
                name = "The Hearts I",
                text = {
                    "Permanently gain",
                    "{C:blue}+#1#{} hand per round",
                    quote.."A minor remedy."
                }
            },
            c_cotc_hearts2 = {
                name = "The Hearts II",
                text = {
                    "Permanently gain",
                    "{C:blue}+#1#{} hands per round",
                    quote.."A remedy."
                }
            },
            c_cotc_hearts3 = {
                name = "The Hearts III",
                text = {
                    "Permanently gain",
                    "{C:blue}+#1#{} hands per round",
                    quote.."A major remedy."
                }
            },
        },
        cotc_Relic = {
            c_cotc_aethrile = {
                name = "Aethrile's Powder Box",
                text = {
                    "Creates a random {C:chemach}Relic",
                    "{s:0.8,C:chemach}Aethrile's Powder Box{s:0.8} excluded",
                    quote.."Vanity may have its use."
                }
            },
            c_cotc_aethrile_B = {
                name = {
                    "{C:blue}Blessed",
                    "Aethrile's Powder Box"
                },
                text = {
                    "Creates a random {C:blue}Blessed {C:chemach}Relic",
                    "{s:0.8,C:chemach}Aethrile's Powder Box{s:0.8} excluded",
                    quote.."Aetherile, be gentle."
                }
            },
            c_cotc_aethrile_D = {
                name = {
                    "{C:red}Damned",
                    "Aethrile's Powder Box"
                },
                text = {
                    "Creates a random {C:red}Damned {C:chemach}Relic",
                    "{s:0.8,C:chemach}Aethrile's Powder Box{s:0.8} excluded",
                    quote.."Aethrile, be cruel."
                }
            },
            c_cotc_ala = {
                name = "Ala's Teeth",
                text = {
                    "-1 Ante",
                    quote.."Proud Ala, smite the weak."
                }
            },
            c_cotc_ala_B = {
                name = {
                    "{C:blue}Blessed",
                    "Ala's Teeth"
                },
                text = {
                    "-1 Ante",
                    "Chance of +1 hand",
                    quote.."Birthed from pain, survival."
                }
            },
            c_cotc_ala_D = {
                name = {
                    "{C:red}Damned",
                    "Ala's Teeth"
                },
                text = {
                    "-1 Ante",
                    "Chance of +1 discard",
                    quote.."Maw of the monster, swallow them whole."
                }
            },
            c_cotc_ashes = {
                name = {
                    "Ashes of the",
                    "Mercurial Mun"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Be cautions; it tends to spark."
                }
            },
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
            c_cotc_beak = {
                name = {
                    "Beak of",
                    "the Fowler"
                },
                text = {
                    "instantly refill discards",
                    quote.."Fowler, drink deep",
                    quote.."our praise."
                }
            },
            c_cotc_bomb = {
                name = {
                    "Grand Mancer's Bomb"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Pulsing with destructive desire."
                }
            },
            c_cotc_bones = {
                name = {
                    "Bones of the Fowler"
                },
                text = {
                    "Not Sure Yet",
                    quote.."They could not live on faith alone..."
                }
            },
            c_cotc_claw = {
                name = {
                    "{C:red}Narinder's Claw"
                },
                text = {
                    "+1 Ante",
                    quote.."Do no evil."
                },
                unlock = {
                    "Cleanse {C:red}The Bishops"
                },
            },
            c_cotc_crow = {
                name = {
                    "Cross Eye of",
                    "the Crow"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Spins to take all in."
                }
            },
            c_cotc_ear = {
                name = {
                    "Kallamar's Ear"
                },
                text = {
                    "Creates a random",
                    "Planet card",
                    quote.."Hear no evil."
                }
            },
            c_cotc_ear_cleansed = {
                name = {
                    "{C:edition}Cleansed",
                    "Kallamar's Ear"
                },
                text = {
                    "Creates 2 random",
                    "Planet cards",
                    quote.."Hear no evil."
                },
                unlock = {
                    "Defeat {C:spectral}Pestilence {}with",
                    "{C:chemach}Kallamar's Ear"
                },
            },
            c_cotc_exorcist = {
                name = "Exorcist's Finger",
                text = {
                    "Creates a random",
                    "{C:tarot}Tarot{} card",
                    quote.."Appendage of the incompetent exorcist."
                }
            },
            c_cotc_exorcist_B = {
                name = {
                    "{C:blue}Blessed",
                    "Exorcist's Finger"
                },
                text = {
                    "Creates a random",
                    "{C:spectral}Spectral{} card",
                    quote.."Haunted bone, brittle sinew."
                }
            },
            c_cotc_exorcist_D = {
                name = {
                    "{C:red}Damned",
                    "Exorcist's Finger"
                },
                text = {
                    "Creates a random",
                    "{C:clauneck}Pelt Tarot{} card",
                    quote.."Magnet to the damned."
                }
            },
            c_cotc_eye = {
                name = {
                    "Eye of Leshy"
                },
                text = {
                    "1 in 5 chance of",
                    "+1000 chips",
                    quote.."See no evil."
                }
            },
            c_cotc_eye_cleansed = {
                name = {
                    "{C:edition}Cleansed",
                    "Eye of Leshy"
                },
                text = {
                    "1 in 5 chance of",
                    "+2000 chips",
                    quote.."See no evil."
                },
                unlock = {
                    "Defeat {C:green}Chaos {}with",
                    "{C:chemach}Eye of Leshy"
                },
            },
            c_cotc_fervant = {
                name = {
                    "Eye of",
                    "the Fervant"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Eyes open still in supplication."
                }
            },
            c_cotc_fingernail = {
                name = {
                    "Kudaai's Fingernail"
                },
                text = {
                    "Upgrade {C:attention}3{} selected",
                    "cards by {C:attention}1{} level",
                    quote.."Vicious claw, wickedly sharp."
                }
            },
            c_cotc_galvar = {
                name = "Galvar's Charm",
                text = {
                    "Not Sure Yet",
                    quote.."Galvar, famed friend."
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
            c_cotc_hands = {
                name = {
                    "The Clasped Hands"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Their names are forgotten, their longing remains."
                }
            },
            c_cotc_icegore_eye = {
                name = {
                    "Eye of",
                    "the Icegore"
                },
                text = {
                    "Not Sure Yet",
                    quote.."An icy stare."
                }
            },
            c_cotc_icegore_toe = {
                name = {
                    "Toe of",
                    "the Icegore"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Footsteps like cracking ice."
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
            c_cotc_kephomite = {
                name = {
                    "Pouch of",
                    "the Kephomite"
                },
                text = {
                    "Not Sure Yet",
                    quote.."From which something",
                    quote.."precious was once taken."
                }
            },
            c_cotc_laplace = {
                name = "Laplace's Dice",
                text = {
                    "{C:green}#1# in #2#{} chance of",
                    "{C:blue}+#3#{} hand or {C:red}+#4#{} discard",
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
            c_cotc_laplace_coin = {
                name = {
                    "Laplace's Coin"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Payment to ferry the dead."
                }
            },
            c_cotc_marbais = {
                name = {
                    "Wishbone of",
                    "the Marbais"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Broken unevenly, granted unfairly."
                }
            },
            c_cotc_mirror = {
                name = "Clauneck's Mirror",
                text = {
                    "{C:attention}Destroy{} all Jokers,",
                    "increase level of {C:attention}random hand",
                    "per destroyed Joker",
                    quote.."The face that stares back; yours, and yet not."
                }
            },
            c_cotc_mirror_B = {
                name = {
                    "{C:blue}Blessed",
                    "Clauneck's Mirror"
                },
                text = {
                    "{C:attention}Destroy{} all Jokers,",
                    "increase level of {C:attention}every hand",
                    "per destroyed Joker",
                    quote.."Borrow from tomorrow's fortune."
                }
            },
            c_cotc_mirror_D = {
                name = {
                    "{C:red}Damned",
                    "Clauneck's Mirror"
                },
                text = {
                    "{C:attention}Destroy{} all Jokers,",
                    "increase level of {C:attention}most played hand",
                    "per destroyed Joker",
                    quote.."Agony of the past, serve me in the present."
                }
            },
            c_cotc_nectar = {
                name = {
                    "Nectar of the Crowns"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Not solid, nor liquid, nor smoke..."
                }
            },
            c_cotc_scales = {
                name = {
                    "Scales of ",
                    "the Anchorite"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Even the pious may be corrupt."
                }
            },
            c_cotc_seal = {
                name = {
                    "Seal of",
                    "the Bishops"
                },
                text = {
                    "{X:chips,C:white}X#1#{} Chips for each",
                    "remaining {C:attention}King{} in deck",
                    "{C:inactive}(Currently {X:chips,C:white}X#2#{C:inactive} Chips)",
                    quote.."Used once to seal the dogma of the Bishops."
                }
            },
            c_cotc_shoe = {
                name = {
                    "Clauneck's Shoe"
                },
                text = {
                    "{C:chips}+#1#{} chips per {C:tarot}Tarot",
                    "card used this run",
                    "if none used, {C:chips}+#2#{} chips",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} chips)",
                    quote.."Does he even know that it's missing?"
                }
            },
            c_cotc_shunrue = {
                name = {
                    "Shunrue's Charm"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Shunrue, famed foe."
                }
            },
            c_cotc_skull = {
                name = {
                    "Shamura's Skull"
                },
                text = {
                    "Saves from death for 1 round",
                    quote.."Think no evil."
                }
            },
            c_cotc_skull_cleansed = {
                name = {
                    "{C:edition}Cleansed",
                    "Shamura's Skull"
                },
                text = {
                    "Saves from death for 2 rounds",
                    quote.."Think no evil."
                },
                unlock = {
                    "Defeat {C:tarot}Conquest {}with",
                    "{C:chemach}Shamura's Skull"
                },
            },
            c_cotc_slythor_eye = {
                name = {
                    "Eye of",
                    "the Slythor"
                },
                text = {
                    "Not Sure Yet",
                    quote.."A glare so corrosive."
                }
            },
            c_cotc_slythor_tail = {
                name = {
                    "Tail of",
                    "the Slythor"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Blood that corrodes."
                }
            },
            c_cotc_starved = {
                name = {
                    "Fang of the Starved"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Hunger that drives and consumes."
                }
            },
            c_cotc_stihi = {
                name = {
                    "Stihi's Tongue"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Venomous tongue, closed fist."
                }
            },
            c_cotc_tachach = {
                name = {
                    "Knuckle of the Tachach"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Ancient and crumbling",
                    quote.."and thrumming with power."
                }
            },
            c_cotc_tears_B = {
                name = {
                    "{C:blue}Blessed",
                    "Tears of the",
                    "Vengeful Father"
                },
                text = {
                    "Convert discards to hands",
                    quote.."What drives the patriach without clan?"
                }
            },
            c_cotc_tears_D = {
                name = {
                    "{C:red}Damned",
                    "Tears of the",
                    "Merciful Mother"
                },
                text = {
                    "Convert discards to double",
                    "the number of hands",
                    quote.."None have mourned like the",
                    quote.."mother without child."
                }
            },
            c_cotc_throat = {
                name = {
                    "Heket's Throat"
                },
                text = {
                    "X2 Mult for 3 hands",
                    quote.."Speak no evil."
                }
            },
            c_cotc_throat_cleansed = {
                name = {
                    "{C:edition}Cleansed",
                    "Heket's Throat"
                },
                text = {
                    "X2 Mult for {X:red}3{} 5 hands",
                    quote.."Speak no evil."
                },
                unlock = {
                    "Defeat {C:gold}Famine {}with",
                    "{C:chemach}Heket's Throat"
                },
            },
            c_cotc_toenail = {
                name = {
                    "Kudaai's Toenail"
                },
                text = {
                    "Upgrade {C:attention}most played{}",
                    "poker hand by {C:attention}#1#{} level",
                    quote.."The most ancient toenail around."
                }
            },
            c_cotc_tooth = {
                name = {
                    "Kudaai's",
                    "Lost Tooth"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Scarce as birds teeth."
                }
            },
            c_cotc_transmorgricon = {
                name = {
                    "The",
                    "Transmorgricon"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Become anew, again and again."
                }
            },
            c_cotc_turua = {
                name = {
                    "Turua's Tentacle"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Writhing arm,",
                    quote.."be wary of its reach."
                }
            },
            c_cotc_warracka = {
                name = {
                    "Warracka's",
                    "Right Fist"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Gripped in servitude."
                }
            },
            c_cotc_widow = {
                name = {
                    "Ewer of the Widow"
                },
                text = {
                    "Not Sure Yet",
                    quote.."Tears of loss, collected to rot."
                }
            },
            c_cotc_yaca = {
                name = {
                    "Little Yaca's Doll"
                },
                text = {
                    "Not Sure Yet",
                    quote.."A toy with too wise eyes..."
                }
            },
        },
        Stake = {},
        Tag = {
            tag_cotc_bane = {
                name = "Bane Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Bane",
                }
            },
            tag_cotc_godly = {
                name = "Godly Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Godly",
                }
            },
            tag_cotc_merciless = {
                name = "Merciless Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Merciless",
                }
            },
            tag_cotc_necro = {
                name = "Necromatic Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Necromatic",
                }
            },
            tag_cotc_vampiric = {
                name = "Vampiric Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Vampiric",
                }
            },
            tag_cotc_zealous = {
                name = "Zealous Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Zealous",
                }
            },
        },
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
            ach_cotc_peace = "Defeat Conquest without using discards.",
            ach_cotc_life = "Defeat Death without using discards.",
            ach_cotc_sate = "Defeat Famine without using discards.",
            ach_cotc_sins_forgiven = "Absolve The Executioner."
        },
        achievement_names = {
            ach_cotc_cold_hearted = "Cold Hearted",
            ach_cotc_cure = "Cure",
            ach_cotc_godhood = "Godhood",
            ach_cotc_order = "Order",
            ach_cotc_peace = "Peace",
            ach_cotc_life = "Life",
            ach_cotc_sate = "Sate",
            ach_cotc_sins_forgiven = "Thy Sins Forgiven"
        },
        blind_states = {},
        challenge_names = {},
        collabs = {},
        dictionary = {
            b_cotc_tarot_cards = "Pelt Tarot Cards",
            b_cotc_relic_cards = "Relics",
            k_cotc_tarot = "Pelt Tarot",
            k_cotc_relic = "Relic",
            k_temple_pack = "Temple Pack",
            k_pelt_pack = "Premonition Pack",
            k_cotc_hit = "Hit!",
            ph_cotc_mercy = "What kind of God are you...?",
            cotc_title = "Cult of the Cards",
            cotc_credits_lead = "Mod by ",
            cotc_credits_shaders = "Shaders by ",
            cotc_credits_art = "Art by ",
            cotc_credits_thanks = "Special Thanks to ",
            cotc_credits_local = "Localizations:",
            cotc_credits_join = "Join the Cult",
            cotc_dlc_toggle = "Woolhaven Content",
            cotc_dlc_toggle_desc = { "Answer the Cold Mother's call...", "(requires restart)" },
            cotc_ritual_title = "-- Select Joker --"
        },
        high_scores = {},
        labels = {
            cotc_bane = "Bane",
            cotc_godly = "Godly",
            cotc_merciless = "Merciless",
            cotc_necro = "Necromantic",
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
        v_dictionary = {
			cotc_art = { "Art: #1#" },
			cotc_code = { "Code: #1#" },
        },
        v_text = {},
    }
}
