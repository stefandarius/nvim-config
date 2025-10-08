return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local lualine = require("lualine")
		local auto_theme = require("lualine.themes.auto")
		auto_theme.normal.c.bg = "NONE"
		auto_theme.inactive.c.bg = "NONE"
		auto_theme.insert.c.bg = "NONE"
		auto_theme.visual.c.bg = "NONE"
		auto_theme.replace.c.bg = "NONE"
		auto_theme.command.c.bg = "NONE"
		auto_theme.command.c.fg = auto_theme.insert.c.fg
		auto_theme.visual.c.fg = auto_theme.insert.c.fg
		auto_theme.normal.c.fg = auto_theme.insert.c.fg
		local opts = {
			options = {
				theme = "gruvbox",
				section_separators = "",
				component_separators = "",
				always_divide_middle = false,
				disabled_filetypes = {
					winbar = { "fugitive", "dashboard", "lazy", "mason", "trouble", "markdown", "gitcommit", "help" },
				},
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						"filetype",
						icon_only = true,
					},
					{
						"filename",
						path = 1,
					},
					"diff",
					"diagnostics",
				},
				lualine_x = { "encoding", "fileformat", "progress", "location" },
				lualine_y = {},
				lualine_z = {},
			},
			winbar = {
				lualine_c = {},
			},
			extensions = { "trouble", "fugitive", "lazy", "mason" },
		}

		-- local trouble = require("trouble")
		-- local symbols = trouble.statusline({
		-- 	mode = "lsp_document_symbols",
		-- 	groups = {},
		-- 	title = false,
		-- 	filter = { range = true },
		-- 	format = "{kind_icon}{symbol.name:Normal}",
		-- 	-- The following line is needed to fix the background color
		-- 	-- Set it to the lualine section you want to use
		-- 	hl_group = "lualine_c_normal",
		-- })
		-- table.insert(opts.winbar.lualine_c, {
		-- 	symbols.get,
		-- 	cond = symbols.has,
		-- })
		lualine.setup(opts)
	end,
}
