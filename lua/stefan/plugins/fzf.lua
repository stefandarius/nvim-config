return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({ "default-title" })

		vim.keymap.set("n", "<C-f>", require("fzf-lua").files, { desc = "Fzf Files" })
		vim.keymap.set("n", "<C-h>", require("fzf-lua").helptags, { desc = "Helptags" })
		vim.keymap.set("n", "<C-m>", require("fzf-lua").man_pages, { desc = "Man pages" })
		vim.keymap.set("n", "<C-l>", require("fzf-lua").live_grep, { desc = "Live grep" })
		vim.keymap.set("n", "<C-g>", require("fzf-lua").grep_cword, { desc = "Grep cword" })
		vim.keymap.set("n", "<C-k>", require("fzf-lua").builtin, { desc = "Builtin commands" })
	end,
}
