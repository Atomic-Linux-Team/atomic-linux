-- =====================================================
-- ======== NEW HYPRLAND.LUA CONFIG FOR ATOMIC =========
-- =====================================================

-- Default monitor conf
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
})

-- Configs
require("hyprland.env")
require("hyprland.general")
require("hyprland.input")
require("hyprland.misc")
require("hyprland.animations")
require("hyprland.decoration")
require("hyprland.group")
require("hyprland.execs")
require("hyprland.rules")
require("hyprland.gestures")
require("hyprland.keybinds")
