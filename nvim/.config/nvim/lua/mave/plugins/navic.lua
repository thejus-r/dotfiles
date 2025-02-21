return {
  "SmiteshP/nvim-navic",

  init = function()
    local navic = require("nvim-navic")
    navic.setup({
      icons = {
        File = ' ',
        Module = ' ',
        Namespace = ' ',
        Package = ' ',
        Class = ' ',
        Method = ' ',
        Property = ' ',
        Field = ' ',
        Constructor = ' ',
        Enum = ' ',
        Interface = ' ',
        Function = ' ',
        Variable = ' ',
        Constant = ' ',
        String = ' ',
        Number = ' ',
        Boolean = ' ',
        Array = ' ',
        Object = ' ',
        Key = ' ',
        Null = ' ',
        EnumMember = ' ',
        Struct = ' ',
        Event = ' ',
        Operator = ' ',
        TypeParameter = ' '
      },

      depth_limit = 5,
      depth_limit_indicator = "..",
      lazy_update_context = false,
      highlight = true,
      separator = " ",
      click = true
    })
  end
}
