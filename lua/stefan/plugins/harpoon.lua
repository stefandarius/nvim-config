return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
    keymap.set("n", "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Toggle harpoon menu" })

    -- navigation
    keymap.set("n", "<C-j>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Navigate to mark 1" })
    keymap.set("n", "<C-k>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Navigate to mark 2" })
    keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Navigate to mark 3" })
    keymap.set("n", "<C-s>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Navigate to mark 4" })
  end,
}
