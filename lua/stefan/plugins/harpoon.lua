return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		local ui = require("harpoon.ui")
		local mark = require("harpoon.mark")

		harpoon.setup({
			global_settings = {
				enter_on_sendcmd = true,
			},
		})
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>a", mark.add_file, { desc = "Mark file with harpoon" })
		keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })

		-- navigation
		keymap.set("n", "<C-j>", function()
			ui.nav_file(1)
		end, { desc = "Navigate to mark 1" })
		keymap.set("n", "<C-n>", function()
			ui.nav_file(2)
		end, { desc = "Navigate to mark 2" })
		keymap.set("n", "<C-s>", function()
			ui.nav_file(3)
		end, { desc = "Navigate to mark 3" })
	end,
}
