return {
  "folke/trouble.nvim",

  config = function ()
   local trouble = require("trouble")

    trouble.setup()

    -- key mappings 
    local keymap = vim.keymap

    keymap.set("n","<leader>xx" ,"<cmd>Trouble diagnostics toggle<cr>", { desc =  "Diagnostics Toggle" })
    keymap.set("n","<leader>xX" ,"<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc =  "Buffer Diagnostics (Trouble)" })
    keymap.set("n","<leader>cs" ,"<cmd>Trouble symbols toggle focus=false<cr>", { desc =  "Symbols (Trouble)" })
    keymap.set("n","<leader>cl" ,"<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc =  "LSP Definitions / references / ...(Trouble)" })
    keymap.set("n","<leader>xL" ,"<cmd>Trouble loclist toggle<cr>", { desc =  "Location List (Trouble)" })
    keymap.set("n","<leader>xQ" ,"<cmd>Trouble qflist toggle<cr>", { desc =  "Diagnostics Toggle" })

  end
}
