# ShestakUI_Profile
Custom profile for ShestakUI
You can overwtite settings for Fonts (https://github.com/Shestak/ShestakUI/blob/master/ShestakUI/Config/Fonts.lua), Positions (https://github.com/Shestak/ShestakUI/blob/master/ShestakUI/Config/Positions.lua) and Settings (https://github.com/Shestak/ShestakUI/blob/master/ShestakUI/Config/Settings.lua) with your checks.

**Adding custom auras for Filger.**
```
T.CustomFilgerSpell = {
		{"T_DEBUFF_ICON", {spellID = 115767, unitID = "target", caster = "player", filter = "DEBUFF"}},
}
```
