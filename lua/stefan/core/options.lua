local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.ruler = false

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.smartindent = true -- copy indent from current line when starting new one

opt.list = true -- show whitespace characters
opt.listchars = { tab = "» ", trail = "·" } -- show special characters

-- line wrapping
opt.wrap = true -- wrap lines

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
-- opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
-- opt.showmode = false -- don't show mode (insert, replace, etc.) on the last line
-- Access colors present in 256 colorspace
vim.g.base16_colorspace = 256
-- Make vim background transparent to work alongside transparent terminal backgrounds
vim.g.base16_background_transparent = 1

-- backspace
-- opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.scrolloff = 8 -- keep 8 lines above and below cursor

vim.wo.fillchars = "eob: " -- remove ~ from end of buffer

opt.showtabline = 1

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.o.winborder = "rounded"
