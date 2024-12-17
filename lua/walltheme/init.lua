local M = {}

local function load_theme()
	package.path = package.path .. ";~/.cache/walltheme/?.lua"

	local colors = require("colors")
	vim.notify(vim.inspect(colors))
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()

	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end)
end

return M
