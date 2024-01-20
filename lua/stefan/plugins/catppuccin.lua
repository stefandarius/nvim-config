return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				telescope = true,
				which_key = true,
				fidget = true,
				indent_blankline = true,
				treesitter = true,
				harpoon = true,
				mason = true,
				treesitter_context = true,
				lsp_trouble = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
