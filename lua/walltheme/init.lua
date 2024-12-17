local M = {}

local function load_colors()
	local home = os.getenv("HOME") -- Obtiene /home/usuario
	local walltheme_path = home .. "/.cache/walltheme/?.lua"

	package.path = package.path .. ";" .. walltheme_path -- Cargar el módulo

	M.colors = require("colors")
end

local function highlight_all()
	local config = require("walltheme.config").set_colors(M.colors)

	for group, properties in pairs(config) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

local function load_theme()
	load_colors()

	vim.opt.termguicolors = true
	highlight_all()
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()
	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end, {
		nargs = 0,
	})
end

return M
