local M = {}

local function load_theme()
	local colors_path = vim.fn.stdpath("cache") .. "/walltheme/colors.lua"
	package.path = package.path .. ";" .. colors_path

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
