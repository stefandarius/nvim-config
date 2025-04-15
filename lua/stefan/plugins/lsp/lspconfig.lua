return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		-- import lspconfig plugin
		local keymap = vim.keymap -- for conciseness

		local opts = { noremap = true, silent = true }
		local on_attach = function(_, bufnr)
			opts.buffer = bufnr

			-- set keybinds
			opts.desc = "Show LSP type definitions"
			keymap.set("n", "gt", vim.lsp.buf.type_definition, opts) -- show lsp type definitions

			opts.desc = "Show inlay hints"
			keymap.set("n", "gih", function()
				---@diagnostic disable-next-line: missing-parameter
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end, opts) -- show inlay hints
		end

		-- Register an autocmd that attaches to the LSP client
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("LspAttach", {}),
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				local bufnr = args.buf
				on_attach(client, bufnr)
			end,
		})
		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		local signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = " ",
				[vim.diagnostic.severity.WARN] = " ",
				[vim.diagnostic.severity.INFO] = " ",
				[vim.diagnostic.severity.HINT] = "󰠠 ",
			},
			texthl = {
				[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
				[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
				[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
				[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
			},
			numhl = {
				[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
				[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
				[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
				[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
			},
		}
		vim.diagnostic.config({
			virtual_text = {
				prefix = "●",
				spacing = 1,
			},
			virtual_lines = {
				current_line = true,
			},
			signs = signs,
			underline = true,
			update_in_insert = false,
		})

		vim.lsp.enable("html")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("elixirls")
		vim.lsp.enable("eslint")
		vim.lsp.enable("ltex")
		vim.lsp.enable("gopls")
		vim.lsp.enable("hls")
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("clangd")
		vim.lsp.enable("cssls")
		vim.lsp.enable("prismals")
		vim.lsp.enable("pyright")
		vim.lsp.enable("lua_ls")
	end,
}
