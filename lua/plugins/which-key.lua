return {
  {
    "folke/which-key.nvim",
    config = function(_, opts)
      local wk = require("which-key")
      opts.operators = { ["<leader>G"] = "Google search" }
      wk.setup(opts)
      wk.register(opts.defaults)
      wk.register({
        ["<leader>"] = {
          a = {
            name = "(Neogen) Annotate",
            ["<cr>"] = {
              function()
                -- Calling the generate function without any parameters will try to generate annotations for the current function.
                ---@diagnostic disable-next-line: missing-parameter
                require("neogen").generate()
              end,
              "Current",
            },
            c = {
              function()
                require("neogen").generate({ type = "class" })
              end,
              "Class",
            },
            f = {
              function()
                require("neogen").generate({ type = "func" })
              end,
              "Function",
            },
            t = {
              function()
                require("neogen").generate({ type = "type" })
              end,
              "Type",
            },
            F = {
              function()
                require("neogen").generate({ type = "file" })
              end,
              "File",
            },
          },
        },
      })
    end,
  },
}
