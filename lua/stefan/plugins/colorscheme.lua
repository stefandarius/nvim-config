--[[ return {
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
				telescope = {
					enabled = true,
				},
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
} ]]
return {
	"rose-pine/neovim",
	lazy = false,
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "main",
			styles = {
				italic = true,
				bold = true,
				transparency = true,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
