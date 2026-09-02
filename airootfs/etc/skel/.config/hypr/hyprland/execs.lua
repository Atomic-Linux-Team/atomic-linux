local vars = require("variables")
local fn = require("utils.functions")

-- Brain Shell Autostarts
hl.on("hyprland.start", function()
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("hypridle -c " .. os.getenv("HOME") .. "/.local/src/Brain_Shell/src/config/hypridle.conf")
	hl.exec_cmd("quickshell -c " .. os.getenv("HOME") .. "/.local/src/Brain_Shell")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

-- Brain_ShellKeybinds
dofile("/$HOME/.config/Brain_Shell/Brain_ShellKeybinds.lua")

-- Resizer listeners
local function apply_resizer_rules(win)
	local float_center = {
		hl.dsp.window.float({ action = "on", window = win }),
		hl.dsp.window.center({ window = win }),
	}
	local pip_actions = fn.move_actions(win) or {}

	-- Bitwarden
	fn.resizer(win, "Bitwarden", 20, 54, float_center, true, "class") -- Native app
	fn.resizer(win, "^Extension: %(Bitwarden Password Manager%) %- Bitwarden", 20, 54, float_center, false) -- Firefox
	fn.resizer(win, "nngceckbapebfimnlniiiahkandclblb", 20, 54, float_center, true, "class") -- Chromium

	-- Picture in picture
	fn.resizer(win, "Picture[- ]in[- ][Pp]icture", 0, 0, pip_actions, false)
end

hl.on("window.title", apply_resizer_rules)
hl.on("window.open", apply_resizer_rules)
