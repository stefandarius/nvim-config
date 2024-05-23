return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		local ibl = require("ibl")
		local highlight = {
			"Custom",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "Custom", { fg = "#6e6a86" })
		end)

		ibl.setup({
			scope = { enabled = false },
			indent = { char = "»", highlight = highlight },
		})
	end,
}
