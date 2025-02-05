-- return {
-- 	"catppuccin/nvim",
-- 	lazy = false,
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "auto",
-- 			background = {
-- 				light = "latte",
-- 				dark = "mocha",
-- 			},
-- 			transparent_background = true,
-- 			integrations = {
-- 				blink_cmp = true,
-- 				gitsigns = true,
-- 				fzf = true,
-- 				which_key = true,
-- 				fidget = true,
-- 				treesitter = true,
-- 				harpoon = true,
-- 				mason = true,
-- 				treesitter_context = true,
-- 				lsp_trouble = true,
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e6a86" })
-- 		vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
-- 		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e6a86" })
-- 	end,
-- }
-- return {
-- 	"rose-pine/neovim",
-- 	lazy = false,
-- 	name = "rose-pine",
-- 	priority = 1000,
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			variant = "main",
-- 			styles = {
-- 				italic = true,
-- 				bold = true,
-- 				transparency = true,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e6a86" })
-- 		vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
-- 		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e6a86" })
-- 	end,
-- }
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	name = "kanagawa",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = true,
			theme = "dragon",
			background = {
				dark = "dragon",
				light = "lotus",
			},
			overrides = function(colors)
				local theme = colors.theme
				local makeDiagnosticColor = function(color)
					local c = require("kanagawa.lib.color")
					return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
				end
				return {
					-- Diagnostics
					DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
					DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
					DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
					DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),

					-- Popup menu
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },
				}
			end,
			colors = {
				pallete = {},
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							float = {
								bg = "none",
							},
							bg_gutter = "none",
						},
					},
				},
			},
		})
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e6a86" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e6a86" })
	end,
}
-- return {
-- 	"thimc/gruber-darker.nvim",
-- 	config = function()
-- 		require("gruber-darker").setup({
-- 			-- OPTIONAL
-- 			transparent = true, -- removes the background
-- 			-- underline = false, -- disables underline fonts
-- 			-- bold = false, -- disables bold fonts
-- 		})
-- 		vim.cmd.colorscheme("gruber-darker")
-- 	end,
-- }
