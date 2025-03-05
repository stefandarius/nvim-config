return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local auto_theme = require("lualine.themes.auto")
		auto_theme.normal.c.bg = "#00000000"
		auto_theme.insert.c.bg = "#00000000"
		auto_theme.visual.c.bg = "#00000000"
		auto_theme.replace.c.bg = "#00000000"
		auto_theme.command.c.bg = "#00000000"
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
		require("lualine").setup(opts)
	end,
}
