-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g
opt.foldenable = false
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.linebreak = true -- linebreak soft wrap at words
opt.listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" }
opt.showbreak = "↪ "
opt.wrap = true
opt.conceallevel = 2

-- disable syntax highlight when line length > 500 ,default 3000
opt.synmaxcol = 500
