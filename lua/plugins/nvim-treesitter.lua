return {
  {
    "nvim-treesitter/nvim-treesitter",
    ---@type TSConfig
    opts = {
      matchup = { enable = true },
      ensure_installed = {
        "html",
        "javascript",
        "json",
        "tsx",
        "typescript",
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            aB = "@block.outer",
            iB = "@block.inner",
            aC = "@conditional.outer",
            iC = "@conditional.inner",
            aF = "@function.outer",
            iF = "@function.inner",
            aL = "@loop.outer",
            iL = "@loop.inner",
            aP = "@parameter.outer",
            iP = "@parameter.inner",
            aX = "@class.outer",
            iX = "@class.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]b"] = "@block.outer",
            ["]f"] = "@function.outer",
            ["]p"] = "@parameter.outer",
            ["]x"] = "@class.outer",
          },
          goto_next_end = {
            ["]B"] = "@block.outer",
            ["]F"] = "@function.outer",
            ["]P"] = "@parameter.outer",
            ["]X"] = "@class.outer",
          },
          goto_previous_start = {
            ["[b"] = "@block.outer",
            ["[f"] = "@function.outer",
            ["[p"] = "@parameter.outer",
            ["[x"] = "@class.outer",
          },
          goto_previous_end = {
            ["[B"] = "@block.outer",
            ["[F"] = "@function.outer",
            ["[P"] = "@parameter.outer",
            ["[X"] = "@class.outer",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            [">F"] = "@function.outer",
            [">P"] = "@parameter.inner",
          },
          swap_previous = {
            ["<F"] = "@function.outer",
            ["<P"] = "@parameter.inner",
          },
        },
      },
    },
  },
}
