return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    local theme = require('catppuccin')
    theme.setup({
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        blink_cmp = true,
        navic = {
          enabled = true,
          custom_bg = "NONE"
        },
        mason = true,
        notifier = true,
        snacks = {
          enabled = true,
          indent_scope_color = "lavender"
        },
        lsp_trouble = true,
        which_key = true,
        mini = {
          enabled = true
        }
      }
    })
    vim.cmd("colorscheme catppuccin-mocha")
  end
}
