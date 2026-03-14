SMODS.Achievement {
	key = "sins_forgiven",
	bypass_all_unlocked = true,
	hidden_text = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_sins_unlock" end
	end
}

SMODS.Achievement {
	key = "cold_hearted",
	bypass_all_unlocked = true,
	hidden_text = true,

	unlock_condition = function (self, args)
        if args then return args.type == "cotc_cold_unlock" end
	end
}