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
		keymap.set("n", "<C-k>", function()
			ui.nav_file(2)
		end, { desc = "Navigate to mark 2" })
		keymap.set("n", "<C-n>", function()
			ui.nav_file(3)
		end, { desc = "Navigate to mark 3" })
		keymap.set("n", "<C-s>", function()
			ui.nav_file(4)
		end, { desc = "Navigate to mark 4" })

		keymap.set(
			"n",
			"<C-t>",
			":lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>",
			{ desc = "Toggle commands menu" }
		)
		keymap.set(
			"n",
			"<leader>1",
			":lua require('harpoon.tmux').sendCommand(\"2\", 1)<CR>",
			{ desc = "Send command 1 to pane 2" }
		)
		keymap.set(
			"n",
			"<leader>2",
			":lua require('harpoon.tmux').sendCommand(\"2\", 2)<CR>",
			{ desc = "Send command 2 to pane 2" }
		)
	end,
}
