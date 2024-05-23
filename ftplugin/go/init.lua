local opt = vim.opt -- for conciseness

-- tabs & indentation
opt.tabstop = 8 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 8 -- 4 spaces for indent width
opt.expandtab = false
opt.smartindent = true -- copy indent from current line when starting new one
