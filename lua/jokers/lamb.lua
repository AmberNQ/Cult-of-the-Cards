SMODS.Joker {
    atlas = 'joker',
    key = 'lamb',
	pos = { x = 4, y = 0 }, soul_pos = { x = 0, y = 0 },
    set_badges = function(self, card, badges) if (self.discovered) then
        badges[#badges+1] = slimeutils.table_create_badge(cotc_badges.WH)
	end end,
    rarity = 3,
    cost = 10,
    config = { extra = {} },
}