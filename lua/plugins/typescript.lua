return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "jose-elias-alvarez/typescript.nvim" },
    opts = {
      -- options for vim.diagnostic.config()
      diagnostics = {
        update_in_insert = false,
      },
      setup = {
        tsserver = function(_, opts)
          require("lazyvim.util").lsp.on_attach(function(client, buffer)
            if client.name == "tsserver" then
            -- stylua: ignore
            vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", { buffer = buffer, desc = "Organize Imports" })
            -- stylua: ignore
            vim.keymap.set("n", "<leader>cR", "<cmd>TypescriptRenameFile<CR>", { desc = "Rename File", buffer = buffer })
            end
          end)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
  },
}
