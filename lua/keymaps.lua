vim.g.mapleader = " "       -- Space for mapleader
vim.g.maplocalleader = ","     -- Local leader

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

--Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
