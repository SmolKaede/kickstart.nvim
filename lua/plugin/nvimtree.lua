return{
    'nvim-tree/nvim-tree.lua',
    config = function()
        --Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        --Setup
        require("nvim-tree").setup()

        --Keybinding
        vim.keymap.set("n", "<leader>r", "<cmd>NvimTreeToggle<cr>")
    end
}
