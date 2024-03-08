return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo = require("todo-comments")
		local keymap = vim.keymap

		todo.setup()

		keymap.set("n", "]t", function()
			todo.jumpto_next()
		end, { desc = "Jump to next todo" })
		keymap.set("n", "[t", function()
			todo.jumpto_prev()
		end, { desc = "Jump to previous todo" })
		keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { desc = "List all todo comments" })
	end,
}
