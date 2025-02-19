return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    local theme = require('rose-pine')
    theme.setup({
      dim_inactive_windows = false,
      styles = {
        transparency = true
      }
    })
    vim.cmd("colorscheme rose-pine")
  end
}
