return {
  {
    "voldikss/vim-browser-search",
    keys = {
      { "<leader>G", "<Plug>SearchVisual", desc = "Search Google", mode = { "x" } },
      { "<leader>G", "<Plug>SearchNormal", desc = "Search Google with text object", mode = "n" },
    },
    config = function()
      vim.api.nvim_set_var("browser_search_default_engine", "google")
    end,
  },
}
