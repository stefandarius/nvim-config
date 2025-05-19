return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local lualine = require("lualine")
		local auto_theme = require("lualine.themes.auto")
		auto_theme.normal.c.bg = "NONE"
		auto_theme.insert.c.bg = "NONE"
		auto_theme.visual.c.bg = "NONE"
		auto_theme.replace.c.bg = "NONE"
		auto_theme.command.c.bg = "NONE"
		auto_theme.command.c.fg = auto_theme.insert.c.fg
		auto_theme.visual.c.fg = auto_theme.insert.c.fg
		local opts = {
			options = {
				theme = "gruvbox",
				section_separators = "",
				component_separators = "",
				always_divide_middle = false,
			},
			sections = {
				lualine_a = {},
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{
						"filetype",
						icon_only = true,
					},
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = { "encoding", "fileformat" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { "trouble", "fugitive", "lazy", "mason" },
		}
		lualine.setup(opts)
	end,
}
