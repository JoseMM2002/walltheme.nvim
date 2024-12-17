local M = {}

-- Ruta al archivo de colores en .cache
local colors_path = "~/.cache/walltheme/colors.lua"

local function load_theme()
	package.path = package.path .. ";~/.cache/wallthemes/?.lua"

	local colors = require("colors")

	vim.notify("Colors: " .. colors.colorscheme, "info", {
		title = "WallTheme",
		timeout = 500,
	})
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()

	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end)
end

return M
