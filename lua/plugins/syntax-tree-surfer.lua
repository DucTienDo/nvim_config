return {
  {
    "ziontee113/syntax-tree-surfer",
    keys = {
      -- Treesitter Swap
      {
        "<c-Right>",
        function()
          require("syntax-tree-surfer").move("n", false)
        end,
        desc = "Swap next tree-sitter object",
        mode = { "n" },
      },
      {
        "<c-Down>",
        function()
          require("syntax-tree-surfer").move("n", false)
        end,
        desc = "Swap next tree-sitter object",
        mode = { "n" },
      },
      {
        "<c-Left>",
        function()
          require("syntax-tree-surfer").move("n", true)
        end,
        desc = "Swap previous tree-sitter object",
        mode = { "n" },
      },
      {
        "<c-Up>",
        function()
          require("syntax-tree-surfer").move("n", true)
        end,
        desc = "Swap previous tree-sitter object",
        mode = { "n" },
      },

      -- Treesitter Surf
      {
        "<Up>",
        function()
          require("syntax-tree-surfer").surf("next", "visual")
        end,
        desc = "Surf next tree-sitter object",
        mode = { "x" },
      },
      {
        "<Down>",
        function()
          require("syntax-tree-surfer").surf("prev", "visual")
        end,
        desc = "Surf previous tree-sitter object",
        mode = { "x" },
      },
      {
        "<Left>",
        function()
          require("syntax-tree-surfer").surf("parent", "visual")
        end,
        desc = "Surf parent tree-sitter object",
        mode = { "x" },
      },
      {
        "<Right>",
        function()
          require("syntax-tree-surfer").surf("child", "visual")
        end,
        desc = "Surf child tree-sitter object",
        mode = { "x" },
      },

      {
        "<C-J>",
        function()
          require("syntax-tree-surfer").surf("next", "visual", true)
        end,
        desc = "Surf next tree-sitter object",
        mode = { "x" },
      },
      {
        "<C-L>",
        function()
          require("syntax-tree-surfer").surf("next", "visual", true)
        end,
        desc = "Surf next tree-sitter object",
        mode = { "x" },
      },
      {
        "<C-K>",
        function()
          require("syntax-tree-surfer").surf("prev", "visual", true)
        end,
        desc = "Surf previous tree-sitter object",
        mode = { "x" },
      },
      {
        "<C-H>",
        function()
          require("syntax-tree-surfer").surf("prev", "visual", true)
        end,
        desc = "Surf previous tree-sitter object",
        mode = { "x" },
      },
    },
  },
}
