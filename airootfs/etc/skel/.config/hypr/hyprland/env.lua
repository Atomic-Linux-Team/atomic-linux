-- hyprland.env.lua
-- Environment variables for Hyprland on Atomic Linux ISO

local uid = os.getenv("UID") or "1000"

env = {
    "LANG=en_US.UTF-8",
    "LC_ALL=en_US.UTF-8",
    "XDG_RUNTIME_DIR=/run/user/" .. uid,
    "DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/" .. uid .. "/bus",
}
