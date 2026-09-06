-- hyprland.execs.lua
-- Autostart applications for Atomic Linux ISO

-- Brain Shell autostart (run when Hyprland starts)
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hypridle -c " .. os.getenv("HOME") .. "/.local/src/Brain_Shell/src/config/hypridle.conf")
    hl.exec_cmd("quickshell -c " .. os.getenv("HOME") .. "/.local/src/Brain_Shell")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

-- Load custom keybinds for Brain_Shell
dofile(os.getenv("HOME") .. "/.config/Brain_Shell/Brain_ShellKeybinds.lua")

-- Optionally start Calamares installer (if installed)
if os.execute("command -v calamares > /dev/null 2>&1") == 0 then
    hl.exec_cmd("calamares")
end

