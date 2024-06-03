return {
  {
    -- Required by many colorscheme plugins
    "rktjmp/lush.nvim",
  },
  {
    "folke/tokyonight.nvim",
    opts = function()
      return {
        style = "storm",
        on_colors = function(colors)
          colors.border = colors.orange
        end,
      }
    end,
  },
  { "metalelf0/jellybeans-nvim" },
  { "kabouzeid/nvim-jellybeans" },
  { -- Default colorscheme in neovim
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight-moon" },
  },
}
