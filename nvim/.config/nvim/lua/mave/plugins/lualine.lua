return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'SmiteshP/nvim-navic'
  },
  config = function()
    local lualine = require("lualine")
    local navic = require("nvim-navic")
    lualine.setup({
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'hello there' },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      winbar = {
        lualine_c = { 'filename',
          {
            function()
              return navic.get_location()
            end,
            cond = function()
              return navic.is_available()
            end
          },
        },
      },
      inactive_winbar = {
        lualine_c = { "filename" },
      }
    })
  end,
}
