-- hyprland.rules.lua
-- Window rules for Atomic Linux ISO

-- Make Calamares installer float and center
rule = {
    "title:Calamares", "floating", "center"
}

-- Make terminal windows tiled by default
rule = {
    "class:foot", "noanim", "bordercolor 0xffa0a0a0"
}
