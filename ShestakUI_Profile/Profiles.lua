----------------------------------------------------------------------------------------
--	ShestakUI personal configuration file
--	BACKUP THIS FILE BEFORE UPDATING!
--	ATTENTION: When saving changes to a file encoded file should be in UTF8
----------------------------------------------------------------------------------------

ShestakUICustomProfile = function()
	local T, C, L = unpack(ShestakUI)

	-- Change UI settings (ShestakUI/Config/Settings.lua)
	C["general"].welcome_message = false
	C["general"].vehicle_mouseover = true
	C["skins"].blizzard_frames = true
	C["skins"].minimap_buttons = true
	C["skins"].bigwigs = true
	C["unitframe"].castbar_icon = true
	C["unitframe"].plugins_enemy_spec = true
	C["raidframe"].solo_mode = true
	C["raidframe"].icons_leader = false
	C["aura"].show_spiral = true
	C["aura"].cast_by = true
	C["actionbar"].toggle_mode = false
	C["actionbar"].bottombars = 3
	C["tooltip"].hide_combat = true
	C["tooltip"].rank = false
	C["tooltip"].spell_id = true
	C["tooltip"].unit_role = true
	C["chat"].background = true
	C["chat"].spam = true
	C["chat"].damage_meter_spam = true
	C["chat"].chat_bar = true
	C["chat"].chat_bar_mouseover = true
	C["chat"].combatlog = false
	C["nameplate"].health_value = true
	C["nameplate"].healer_icon = true
	C["combattext"].crit_prefix = ""
	C["combattext"].blizz_head_numbers = true
	C["combattext"].dk_runes = false
	C["combattext"].heal_treshold = UnitHealthMax("player")/100
	C["minimap"].toggle_menu = false
	C["minimap"].fog_of_war = true
	C["filger"].show_tooltip = true
	C["announcements"].bad_gear = true
	C["automation"].accept_invite = true
	C["automation"].screenshot = true
	C["automation"].auto_role = true
	C["automation"].tab_binder = true
	C["pulsecooldown"].enable = true
	C["pulsecooldown"].threshold = 6
	C["threat"].enable = false
	C["toppanel"].enable = false
	C["stats"].battleground = true
	C["stats"].currency_cooking = false
	C["stats"].currency_professions = false
	C["stats"].currency_raid = false
	C["stats"].currency_misc = false
	C["trade"].disenchanting = true
	C["trade"].enchantment_scroll = true
	C["misc"].shift_marking = false
	C["misc"].quest_auto_button = true
	C["misc"].click_cast = true
	
	-- Change UI fonts (ShestakUI/Config/Fonts.lua)
	C["font"].stats_font = C.media.normal_font
	C["font"].stats_font_style = "OUTLINE"
	C["font"].stats_font_size = 12
	
	-- Change UI positions (ShestakUI/Config/Positions.lua)
	C["position"].raid_cooldown = {"TOPLEFT", UIParent, "TOPLEFT", 300, -14}
	C["position"].bag = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -21, 20}
	C["position"].bank = {"BOTTOMLEFT", UIParent, "BOTTOMLEFT", 21, 20}
	C["position"].auto_button = {"BOTTOMLEFT", "oUF_Player", "TOPRIGHT", 33, 83}
	C["position"].unitframes.arena = {"BOTTOMRIGHT", UIParent, "RIGHT", -55, -70}

	-- Add spell for Filger
	T.CustomFilgerSpell = {
		{"COOLDOWN", {spellID = 313698, filter = "ICD", trigger = "BUFF", duration = 80}}, -- Gift of the Titans
	}
	
	-- Change Blizzard fonts (ShestakUI/Modules/Blizzard/Fonts.lua)
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", function()
		GameTooltipHeader:SetFont(C.media.normal_font, 14)
		Tooltip_Small:SetFont(C.media.normal_font, 10)
		ChatBubbleFont:SetFont(C.media.normal_font, 15)
	end)
	
	-- Change raid layout depend of class
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("VARIABLES_LOADED")
	frame:SetScript("OnEvent", function()
		ShestakUISettings = ShestakUISettings or {}
		if T.class == "PALADIN" then
			ShestakUISettings.RaidLayout = "HEAL"
		else
			ShestakUISettings.RaidLayout = "DPS"
		end
	end)
	
	-- Change Blizzard CVar
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", function()
		SetCVar("lootUnderMouse", 1)
	end)
	
	-- Hide Bottom line
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", function()
		BottomPanel:Hide()
	end)
	
	-- Set chat font size
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", function()
	    for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G[format("ChatFrame%s", i)]
		FCF_SetChatWindowFontSize(nil, frame, 15)
	    end
	end)
end
