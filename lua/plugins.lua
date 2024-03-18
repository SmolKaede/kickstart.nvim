local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    { "folke/which-key.nvim", cmd = "Neoconf" },
    -- Theme
    { "rose-pine/neovim", name = "rose-pine" },
    { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, },
    --Telescope
    { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { {'nvim-lua/plenary.nvim'} } },
    --Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    --Undotree
    { "mbbill/undotree" },
    --Fugitive
    { "tpope/vim-fugitive" },
    --LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    --NVim tree
    {'nvim-tree/nvim-tree.lua'},
    --Tmux Nav
    {
      "christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      },
    },
    -- Autopairs
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true},
    --Lazygit
    { "kdheepak/lazygit.nvim",
        cmd = {"LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile"},
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    --Comment toggle
    { "numToStr/Comment.nvim", lazy = false, opts = {}, },
    --LuaLine
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
})
