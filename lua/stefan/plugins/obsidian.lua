return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	-- ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
		-- refer to `:h file-pattern` for more examples
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/obsidian/main/*.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/obsidian/main/*.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "main",
				path = "~/obsidian/main/",
			},
		},

		-- see below for full list of options 👇
		completion = {
			blink = true,
			nvim_cmp = false,
			min_chars = 2,
		},
	},
}
