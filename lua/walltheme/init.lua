local M = {}

-- Ruta al archivo de colores en .cache
local colors_path = vim.fn.expand("~/.cache/walltheme/colors.lua")

local function load_theme()
	local ok, colorscheme = pcall(require, "walltheme")
	if not ok then
		print("Colorscheme not found at " .. colors_path)
		return
	end

	local colors = colorscheme.colors

	-- Aplicar colores
	vim.opt.termguicolors = true
	vim.api.nvim_set_hl(0, "Normal", { fg = colors.foreground, bg = colors.background })
	vim.api.nvim_set_hl(0, "Cursor", { fg = colors.cursor, bg = colors.cursor })
	vim.api.nvim_set_hl(0, "LineNr", { fg = colors.color8, bg = colors.background })
	vim.api.nvim_set_hl(0, "Comment", { fg = colors.color8, italic = true })
	vim.api.nvim_set_hl(0, "Keyword", { fg = colors.color1, bold = true })
	vim.api.nvim_set_hl(0, "String", { fg = colors.color2 })
	vim.api.nvim_set_hl(0, "Function", { fg = colors.color4, bold = true })

	vim.notify("Colorscheme loaded", vim.log.levels.INFO)
end

-- Función para cargar el archivo de colores
function M.setup()
	load_theme()

	vim.api.nvim_create_user_command("LoadWallTheme", function()
		load_theme()
	end)
end

return M
