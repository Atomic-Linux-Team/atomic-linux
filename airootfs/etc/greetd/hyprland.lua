-- /etc/greetd/hyprland.lua
-- --------------------------------------------------------------
--                                                             --
-- Configuración mínima en Lua para el Greeter de Atomic Linux --
--                                                             --
-- --------------------------------------------------------------

-- Iniciando ReGreet
hl.on("startup", function()
	os.execute("regreet")
	os.execute("hyprctl dispatch exit")
end)

-- Estética
hl.set("decoration:rounding", 8)
hl.set("decoration:blur:enabled", true)
hl.set("decoration:blur:size", 6)
