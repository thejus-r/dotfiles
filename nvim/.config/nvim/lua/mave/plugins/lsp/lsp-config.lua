return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'saghen/blink.cmp',
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local capabilities = require('blink.cmp').get_lsp_capabilities()

    lspconfig['lua_ls'].setup({ capabilities = capabilities })


    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error =" ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function (server_name)
        lspconfig[server_name].setup({})
      end,

      ["lua_ls"] = function ()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })
      end,

      ["emmet_ls"] = function ()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
           filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        })
      end,

      ["ts_ls"] = function ()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          filetype = {"typescript" , "javascript", "typescriptreact", "javascriptreact"},
        })
      end,
    })
  end,
}
