----------------------------------------------------------------------------------------
--	ShestakUI personal configuration file
--	BACKUP THIS FILE BEFORE UPDATING!
--	ATTENTION: When saving changes to a file encoded file should be in UTF8
----------------------------------------------------------------------------------------

ShestakUICustomProfile = function()
	local T, C, L = unpack(ShestakUI)

	C["general"].welcome_message = false
	C["misc"].shift_marking = false
	C["general"].vehicle_mouseover = true
	C["misc"].quest_auto_button = true
	C["trade"].disenchanting = true
	C["misc"].click_cast = true
	C["trade"].enchantment_scroll = true
	C["announcements"].bad_gear = true
	C["automation"].accept_invite = true
	C["automation"].screenshot = true
	C["automation"].auto_role = true
	C["automation"].tab_binder = true
	C["skins"].blizzard_frames = true
	C["skins"].minimap_buttons = true
	C["skins"].bigwigs = true
	C["combattext"].crit_prefix = ""
	C["combattext"].blizz_head_numbers = true
	C["combattext"].dk_runes = false
	C["combattext"].heal_treshold = UnitHealthMax("player")/100
	C["pulsecooldown"].enable = true
	C["pulsecooldown"].threshold = 6
	C["threat"].enable = false
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
	C["minimap"].toggle_menu = false
	C["minimap"].fog_of_war = true
	C["nameplate"].health_value = true
	C["nameplate"].healer_icon = true
	C["actionbar"].toggle_mode = false
	C["actionbar"].bottombars = 3
	C["aura"].show_spiral = true
	C["aura"].cast_by = true
	C["filger"].show_tooltip = true
	C["unitframe"].castbar_icon = true
	C["unitframe"].plugins_enemy_spec = true
	C["raidframe"].solo_mode = true
	C["raidframe"].icons_leader = false
	C["toppanel"].enable = false
	C["stats"].battleground = true
	C["stats"].currency_cooking = false
	C["stats"].currency_professions = false
	C["stats"].currency_raid = false
	C["stats"].currency_misc = false
	C["font"].stats_font = C.media.normal_font
	C["font"].stats_font_style = "OUTLINE"
	C["font"].stats_font_size = 12
	C["position"].raid_cooldown = {"TOPLEFT", UIParent, "TOPLEFT", 300, -14}
	C["position"].bag = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -21, 20}
	C["position"].bank = {"BOTTOMLEFT", UIParent, "BOTTOMLEFT", 21, 20}
	C["position"].auto_button = {"BOTTOMLEFT", "oUF_Player", "TOPRIGHT", 33, 83}
	C["position"].unitframes.arena = {"BOTTOMRIGHT", UIParent, "RIGHT", -55, -70}

	T.CustomFilgerSpell = {
		{"COOLDOWN", {spellID = 313698, filter = "ICD", trigger = "BUFF", duration = 80}}, -- Gift of the Titans
	}
end