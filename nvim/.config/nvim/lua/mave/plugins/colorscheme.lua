return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,

  config = function()

    local catppuccin = require("catppuccin")

    ---@class tokyonight.Config
    catppuccin.setup({
      flavor = "mocha",
      transparent_background = true,
    })

    vim.cmd[[colorscheme catppuccin]]
  end,
}
