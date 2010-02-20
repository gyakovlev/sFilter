-- "true" means enabled, "false" means disabled
sFilter_Settings = {
	configmode = false, -- In this mode all icons are shown and can be moved.
	FontSize = 11,      -- Font size for stacks text
	r = .8,             -- Text color for stacks text More info: http://www.wowwiki.com/API_FontString_SetTextColor
	g = .8,
	b = .8,
	CountPoint = {"BOTTOMRIGHT"},            -- Stacks text position. More info: http://www.wowwiki.com/API_Region_SetPoint
}

--[[ More info about config mode:
You can move icons with left mouse button while holding Alt OR Shift. Changed position won't be saved between sessions.
After click on icon you will see in chat info about its position. This can be used to change setPoint attribute is spell list.
Clicking on icon with right mouse button will reset its position to default.
]]

--[[ Closer look at spell lists:
All classes have their own spell list.
Each entry in list cЖц
reates a separate icon. Entry is a table with values in it:
- spellId - id of spell you want to track. If you don't know it - check wowhead.com - last number in any spell link is spellid (example: http://www.wowhead.com/?spell=55095, id is 55095)
- spellId2, spellId3, spellId4, spellId5 - optional entries, these are the spellids you want to track if primary spell is NOT active.
- size - icon size in pixels
- unitId - unit at which you wish to track selected spell(s). More info: http://www.wowwiki.com/UnitId
- isMine - this is filter. isMine = 1 means only  effects from units in MyUnits table will be shown (see below for this table. Note: isMine = "1" will NOT work, it should be number, not string. Any other value will show effect from any source
- filter - filter again =). Needs to be "HELPFUL" for buffs and "HARMFUL" for debuffs.
- setPoint - where to place the icon. It's a table with coordinates inside. More info: http://www.wowwiki.com/API_Region_SetPoint

I removed alpha settings and some other things, you can use original addon version for these features: http://toxila.googlecode.com/svn/zips/sFilter/
]]

sFilter_Spells = {
    ["DEATHKNIGHT"] = {
    },
    ["HUNTER"] = {
    },
    ["MAGE"] = {
    },
    ["PALADIN"] = {
    },
    ["PRIEST"] = { 
    },
    ["ROGUE"] = {
    },
    ["SHAMAN"] = {        
    },
	["WARLOCK"] = {
		--Tier bonus
			--4t10 Devious Minds
	 		{spellId = 70840, size = 30, unitId = "player", isMine = 1, filter = "HELPFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 660, 465}},



		--caster classes need this
			-- Misery, Improved Farie Fire
			{spellId = 33198, spellId2 = 33602, size = 30, unitId = "target", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 670, 227}},

			-- CoE, Ebon Plaguebringer, Earth and Moon
			{spellId = 47865, spellId2 = 51735, spellId3 = 48511, size = 30, unitId = "target", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 703, 227}},

			-- Shadow mastery, Improved Scorch, Winter Chill
			{spellId = 17800, spellId2 = 22959, spellId3 = 12579, size = 30, unitId = "target", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 735, 227}},


			-- CoA, CoD, CoE, CoW, CoT
			{spellId = 47864, spellId2 = 47867, spellId3 = 47865 , spellId4 = 50511 , spellId5 = 11719, size = 30, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 845, 465}},

			-- Molten Core (demo), Shadow Trance (affli)
			{spellId = 47383, spellId2 = 17941, size = 30, unitId = "player", isMine = 1, filter = "HELPFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 596, 465}},

			-- Decimation (demo), Backdraft (destro), Eradication (affli)
			{spellId = 63158, spellId2 = 54277, spellId3 = 64371, size = 30, unitId = "player", isMine = 1, filter = "HELPFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 628, 465}},

			-- Immo/UA
			{spellId = 47811, spellId2 = 47843, size = 30, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 813, 465}},

			-- Corruption/SoC
			{spellId = 47813, spellId2 = 47836, size = 30, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 780, 465}},

			-- Haunt/Conflagrate DoT
			{spellId = 59164, spellId2 = 17962, size = 30, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 877, 465}},

			-- Shadow embrace
			{spellId = 32391, size = 30, unitId = "target", isMine = 1, filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 767, 227}},

	--Important PVE Buffs/DeBuffs
	--ICC
	--Lady Deathwhisper
	--Curse of Torpor (big (de)buff)

	{spellId = 71237, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},

	--BloodQueen Lana`thel
	--Swarming shadows (big (de)buff)
	{spellId = 71861, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},
	
	--Sindragosa
	--Unchained Magic 1'st (de)buff
		{spellId = 69762, size = 30, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 845, 510}},
	--Instability (big (de)buff) 
		{spellId = 69766, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},
	--Mystic Buffet 2'nd (de)buff
		{spellId = 70127, spellId2 = 70128, spellId3 = 72528, spellId4 = 72529, spellId5 = 72530, size = 30, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 877, 510}},
	--Lich King
	--Necrotic plague (big (de)buff)
		{spellId = 70337, spellId2 = 70338, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},
		{spellId = 73785, spellId2 = 73786, spellId3 = 73787, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},
		{spellId = 73912, spellId2 = 73913, spellId3 = 73914, size = 61, unitId = "player", isMine = "all", filter = "HARMFUL", setPoint = {"CENTER", UIParent, "BOTTOMLEFT", 796, 513}},
       }, 

    ["WARRIOR"] = {
   
    }
}
