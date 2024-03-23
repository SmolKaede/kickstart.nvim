return{
    "kdheepak/lazygit.nvim",
    cmd = {"LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile"},
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
    end
}
