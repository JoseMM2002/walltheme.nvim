local M = {}

local function load_colors()
	local home = os.getenv("HOME") -- Obtiene /home/usuario
	local walltheme_path = home .. "/.cache/walltheme/?.lua"

	package.path = package.path .. ";" .. walltheme_path -- Cargar el módulo
	local colors = require("colors")

	return colors
end

local function highlight_all(colors)
	local highlights = require("config")()

	for group, properties in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

local function load_theme()
	local colors = load_colors()
	vim.opt.termguicolors = true
	highlight_all(colors)
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()

	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end)
end

return M
