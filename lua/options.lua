vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'		-- Mouse able to be used in nvim

-- Tab --
vim.opt.tabstop = 4		--visual spaces per TAB
vim.opt.softtabstop = 4		--number of spaces in tab when editing
vim.opt.shiftwidth = 4		--insert 4 spaces on a tab
vim.opt.expandtab = true	--tabs are spaces

-- UI --
vim.opt.number = true		--absolute number
vim.opt.relativenumber = true	--Numbers on the left side
vim.opt.cursorline = true	--highlight cursor line underneath the cursor horizontal
vim.opt.splitbelow = true	--New vert split bottom
vim.opt.splitright = true	--New horizontal splits right
vim.opt.termguicolors = true	--24bit rgb color
vim.opt.showmode = false		--show mode
vim.opt.scrolloff = 10		--10 lines of scrolloff
vim.opt.signcolumn = "yes"

-- Search --
vim.opt.incsearch = true	--search as characters are entered
vim.opt.hlsearch = false		--highlight matches
vim.opt.ignorecase = true	--ignore case in search
vim.opt.smartcase = true	--case sensitive if uppercase is entered

