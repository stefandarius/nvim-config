return {
	"hrsh7th/nvim-cmp",
	lazy = false,
	priority = 100,
	dependencies = {
		"onsails/lspkind.nvim", -- vs-code like pictograms
		"hrsh7th/cmp-nvim-lsp", -- source for nvim-lsp
		"hrsh7th/cmp-path", -- source for file system paths
		"hrsh7th/cmp-buffer", -- source for text in buffer
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		}, -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
	},

	config = function()
		local lspkind = require("lspkind")
		lspkind.init()

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		local cmp = require("cmp")

		cmp.setup({
			-- sources for autocompletion
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.ConfirmBehavior.Insert }), -- previous suggestion
				["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.ConfirmBehavior.Insert }), -- next suggestion
				["<C-y>"] = cmp.mapping.confirm(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				}, { "i", "c" }),
			}),
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			completion = {
				completeopt = "menu,menuone,noselect",
			},
		})

		cmp.setup.filetype({ "sql", "mysql" }, {
			sources = {
				{ name = "vim-dadbod-completion" },
				{ name = "buffer" },
			},
		})

		local ls = require("luasnip")
		ls.config.setup({
			history = true,
			updateevents = "TextChanged,TextChangedI",
		})

		-- set keybindings for snippets
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end)

		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end)
	end,
}
