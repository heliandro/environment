-- Basic Options
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true
vim.opt.hidden = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = '~/.nvim/undodir'	 -- sets where undo files land
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false                -- No wrap lines
vim.opt.updatetime = 50             -- faster completion
vim.opt.timeoutlen = 500            -- time to wait for a mapped sequel
--vim.opt.pumheight = 10            -- Popup-menu height
vim.opt.clipboard = 'unnamedplus'   -- Unified with system clipboard
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }        -- Finding files -- Search down into subfolders
vim.opt.wildignore:append { '*.pyc', '*/node_modules/*' } -- Ignore folders and files
vim.o.splitbellow = true	          -- automatic h split going down
vim.o.splitright = true		          -- automatic v split going right
vim.o.colorcolumn = '80'            -- Vertical column char at position 80 to indicates limit 80 char per line.
--vim.o.signcolumn = 'yes'          -- Vertical column before line numbers

-- Undercurl - mark errors with undercurl
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])

 -- Highlights
vim.opt.termguicolors = true
vim.opt.winblend = 20               -- Transparency background for the floating window. values: 0-100
vim.opt.wildoptions = 'pum'         -- List of wordsx that change how cmline-completions is done.
vim.opt.pumblend = 20               -- Transparency background for the popup-menu. values: 0-100
vim.opt.background = 'dark'         -- Force terminal with dark theme


