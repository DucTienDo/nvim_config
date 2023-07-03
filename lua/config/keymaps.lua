-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local syntax_tree_surfer = require("syntax-tree-surfer")
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Bufferline:
-- move buffer backward or forward
map("n", ">B", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Buffer forward" })
map("n", "<B", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Buffer backward" })

-- Resize window using arrow keys
map("n", "<Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Treesitter Swap
map("n", "<c-Right>", function()
  syntax_tree_surfer.move("n", false)
end, { desc = "Swap next tree-sitter object" })
map("n", "<c-Down>", function()
  syntax_tree_surfer.move("n", false)
end, { desc = "Swap next tree-sitter object" })
map("n", "<c-Left>", function()
  syntax_tree_surfer.move("n", true)
end, { desc = "Swap previous tree-sitter object" })
map("n", "<c-Up>", function()
  syntax_tree_surfer.move("n", true)
end, { desc = "Swap previous tree-sitter object" })

-- Treesitter Surf
map("x", "<Up>", function()
  syntax_tree_surfer.surf("next", "visual")
end, { desc = "Surf next tree-sitter object" })
map("x", "<Down>", function()
  syntax_tree_surfer.surf("prev", "visual")
end, { desc = "Surf previous tree-sitter object" })
map("x", "<Left>", function()
  syntax_tree_surfer.surf("parent", "visual")
end, { desc = "Surf parent tree-sitter object" })
map("x", "<Right>", function()
  syntax_tree_surfer.surf("child", "visual")
end, { desc = "Surf child tree-sitter object" })

map("x", "<C-J>", function()
  syntax_tree_surfer.surf("next", "visual", true)
end, { desc = "Surf next tree-sitter object" })
map("x", "<C-L>", function()
  syntax_tree_surfer.surf("next", "visual", true)
end, { desc = "Surf next tree-sitter object" })
map("x", "<C-K>", function()
  syntax_tree_surfer.surf("prev", "visual", true)
end, { desc = "Surf previos tree-sitter object" })
map("x", "<C-H>", function()
  syntax_tree_surfer.surf("prev", "visual", true)
end, { desc = "Surf previos tree-sitter object" })
