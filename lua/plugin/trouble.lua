return{

     "folke/trouble.nvim",
     dependencies = { "nvim-tree/nvim-web-devicons" },
     config = function()
         vim.keymap.set('n', '<leader>ee', function() require("trouble").toggle() end)
         vim.keymap.set('n', '<leader>ew', function() require("trouble").toggle("workspace_diagnostics") end)
         vim.keymap.set('n', '<leader>ed', function() require("trouble").toggle("document_diagnostics") end)
         vim.keymap.set('n', '<leader>eq', function() require("trouble").toggle("quickfix") end)
     end
}
