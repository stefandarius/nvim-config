return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local opts = {
			options = {
				theme = "kanagawa",
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
