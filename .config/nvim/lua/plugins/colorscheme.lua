return {
  -- 1. Download the colorscheme plugin via GitHub repository string
  {
    -- "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    lazy = false, -- Make sure the theme loads immediately on startup
    priority = 1000, -- Load the theme before all other plugins
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- 2. Tell LazyVim to load this colorscheme automatically
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      colorscheme = "tokyonight-moon",
    },
  },
}
