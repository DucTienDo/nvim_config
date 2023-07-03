return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = {
        width = 50,
        mappings = {
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "ﰊ",
        },
        git_status = {
          symbols = {
            -- Change type
            added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted = "✖", -- this can only be used in the git_status source
            renamed = "", -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "[]",
            staged = "",
            conflict = "",
          },
        },
      },
    },
  },
}
