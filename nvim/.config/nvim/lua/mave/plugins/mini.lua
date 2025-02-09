return {
  'echasnovski/mini.nvim',
  version = '*',

  config = function()
    local pairs = require("mini.pairs")
    pairs.setup()
  end,
}
