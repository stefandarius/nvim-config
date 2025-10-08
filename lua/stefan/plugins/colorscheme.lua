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
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	name = "kanagawa",
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			transparent = true,
-- 			theme = "dragon",
-- 			background = {
-- 				dark = "dragon",
-- 				light = "lotus",
-- 			},
-- 			overrides = function(colors)
-- 				local theme = colors.theme
-- 				local makeDiagnosticColor = function(color)
-- 					local c = require("kanagawa.lib.color")
-- 					return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
-- 				end
-- 				return {
-- 					-- Diagnostics
-- 					DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
-- 					DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
-- 					DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
-- 					DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
--
-- 					-- Popup menu
-- 					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
-- 					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
-- 					PmenuSbar = { bg = theme.ui.bg_m1 },
-- 					PmenuThumb = { bg = theme.ui.bg_p2 },
-- 					--
-- 					NormalFloat = { bg = "none" },
-- 					FloatBorder = { bg = "none" },
-- 					FloatTitle = { bg = "none" },
--
-- 					-- Save an hlgroup with dark background and dimmed foreground
-- 					-- so that you can use it where your still want darker windows.
-- 					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
-- 					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
--
-- 					-- Popular plugins that open floats will link to NormalFloat by default;
-- 					-- set their background accordingly if you wish to keep them dark and borderless
-- 					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 				}
-- 			end,
-- 			colors = {
-- 				pallete = {},
-- 				theme = {
-- 					wave = {},
-- 					lotus = {},
-- 					dragon = {},
-- 					all = {
-- 						ui = {
-- 							float = {
-- 								bg = "none",
-- 							},
-- 							bg_gutter = "none",
-- 						},
-- 					},
-- 				},
-- 			},
-- 		})
-- 		vim.cmd("colorscheme kanagawa")
-- 		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e6a86" })
-- 		vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
-- 		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e6a86" })
-- 	end,
-- }
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
return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			transparent_mode = true,
			overrides = {
				LineNrAbove = { fg = "#6e6a86" },
				LineNr = { fg = "white" },
				LineNrBelow = { fg = "#6e6a86" },
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
	opts = ...,
}
