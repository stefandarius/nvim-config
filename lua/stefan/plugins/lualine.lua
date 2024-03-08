return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local custom_rose_pine = require("lualine.themes.rose-pine")
		local opts = {
			options = {
				theme = custom_rose_pine,
				section_separators = "",
				component_separators = "",
				always_divide_middle = false,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					"%=",
					{
						"filetype",
						colored = false,
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
