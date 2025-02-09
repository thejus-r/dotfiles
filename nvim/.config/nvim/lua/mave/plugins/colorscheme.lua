return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,

  config = function()

    local tokyonight = require("tokyonight")

    ---@class tokyonight.Config
    tokyonight.setup({
      style = "night",
      transparent = true,
    })

    vim.cmd[[colorscheme tokyonight]]
  end,
}
