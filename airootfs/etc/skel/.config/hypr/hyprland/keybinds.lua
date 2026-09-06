-- hyprland.keybinds.lua
-- Keybindings for Atomic Linux ISO Hyprland

local mod = "SUPER"

-- Launch terminal (foot)
bind = "$mod, RETURN, exec, foot"

-- Launch Calamares installer (also bound to $mod+I)
bind = "$mod, I, exec, if command -v calamares >/dev/null 2>&1; then calamares; fi"

-- Reload Hyprland config
bind = "$mod, SHIFT, R, reload, "

-- Exit Hyprland
bind = "$mod, SHIFT, Q, exit, "
