return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'saghen/blink.cmp',
    "SmiteshP/nvim-navic"
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local navic = require("nvim-navic")

    local capabilities = require('blink.cmp').get_lsp_capabilities()

    local on_attach = function (client, bufnr)
      if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
      end
    end

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error =" ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function (server_name)
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = capabilities
        })
      end,

      ["lua_ls"] = function ()
        lspconfig["lua_ls"].setup({
          on_attach = on_attach,
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
    })
  end,
}
