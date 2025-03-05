-- Lua
return {
	"f-person/auto-dark-mode.nvim",
	config = function()
		require("auto-dark-mode").setup({
			set_dark_mode = function()
				vim.api.nvim_set_option_value("background", "dark", {})
			end,
			set_light_mode = function()
				vim.api.nvim_set_option_value("background", "light", {})
			end,
			update_interval = 5000,
			fallback = "dark",
		})
	end,
}
