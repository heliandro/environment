vim.o.relativenumber = false 		-- set relative numbered lines
vim.o.number = true 			      -- set numbered line
vim.o.fileencoding = 'utf-8'    -- the encoding written to a file
vim.o.completeopt = 'menuone,noselect' -- mostly just for cmp
vim.o.hlsearch = true
vim.o.pumheight = 10
vim.o.incsearch = true			    -- jump incrementally to search results
vim.o.hidden = true			        -- allow hidden buffers
--vim.o.autowrite = true
vim.o.wrap = false			        -- display lines as long one line
vim.o.swapfile = false			    -- don't need swap files
vim.o.backup = false			    -- don't create a backup files
vim.o.undodir = '~/.nvim/undodir'	-- sets where undo files land
vim.o.scrolloff = 8			        -- scroll offwidth in the bottom
vim.o.sidescrolloff = 8
vim.o.colorcolumn= '80'			    -- bar at 80 chars width
vim.o.signcolumn = 'yes'		    -- always show the sign column
vim.o.mouse = 'a'			          -- always enable mouse mode
vim.o.tabstop = 2			          -- inset 2 spaces for a tab
vim.o.softwidth = 0         
vim.o.shiftwidth = 2              -- the number of spaces inserted
vim.o.expandtab = true            -- converts tabs to spaces
vim.o.smartindent = true          -- make identing smarter again
vim.o.ignorecase = true		        -- ignore case when searching
vim.o.smartcase = true		        -- unless we explicitly use case in search
vim.o.splitbellow = true	        -- automatic h split going down
vim.o.splitright = true		        -- automatic v split going right
vim.o.updatetime = 100            -- faster completion
vim.o.timeoutlen = 1000           -- time to wait for a mapped sequel
vim.o.clipboard = 'unnamedplus'
vim.o.showmode = false
vim.o.cmdheight = 2               -- more space in the neovim command
vim.o.conceallevel = 0
vim.o.guifont = scientifica