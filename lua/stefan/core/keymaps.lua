vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", "<cmd>Explore<CR>", { desc = "Open project explorer" })
