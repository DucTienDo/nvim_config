return {
  {
    "voldikss/vim-browser-search",
    config = function()
      vim.api.nvim_set_var("browser_search_default_engine", "google")
    end,
  },
}
