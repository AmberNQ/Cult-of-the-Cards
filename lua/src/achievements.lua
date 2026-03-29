SMODS.Achievement {
	key = "order",
	bypass_all_unlocked = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_order_unlock" end
	end
}

SMODS.Achievement {
	key = "sate",
	bypass_all_unlocked = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_sate_unlock" end
	end
}

SMODS.Achievement {
	key = "cure",
	bypass_all_unlocked = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_cure_unlock" end
	end
}

SMODS.Achievement {
	key = "peace",
	bypass_all_unlocked = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_peace_unlock" end
	end
}

SMODS.Achievement {
	key = "life",
	bypass_all_unlocked = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_life_unlock" end
	end
}

SMODS.Achievement {
    atlas = 'achieve',
	key = "godhood",
	bypass_all_unlocked = true,
	reset_on_startup = true,
	
    hidden_pos = { x = 1, y = 0 }, pos = { x = 1, y = 1 },

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_god_status" end
	end
}