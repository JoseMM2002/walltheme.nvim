local M = {}

-- Ruta al archivo de colores en .cache
local colors_path = "~/.cache/walltheme/colors.lua"

local function load_theme()
	package.path = package.path .. ";~/.cache/wallthemes/?.lua"

	local colors = require("colors")

	print("El color de fondo es: " .. colors.background)
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()

	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end)
end

return M
