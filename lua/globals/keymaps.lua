local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G', opts)

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("", "w<up>", "<C-w>k", opts)
keymap("", "w<down>", "<C-w>j", opts)
keymap("", "w<left>", "<C-w>h", opts)
keymap("", "w<right>", "<C-w>l", opts)

-- Buffer split
-- <C-w>v for vertical split
-- <C-w>h for horizontal split
-- <C-w>c for close split buffer

-- Navigate Buffers / Tabs
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-del>", ":Bdelete<CR>", opts)
keymap("", "t<right>", ":bnext<CR>", opts)
keymap("", "t<left>", ":bprevious<CR>", opts)
keymap("", "t<del>", ":Bdelete<CR>", opts)
keymap("", "tp", ":BufferLineTogglePin<CR>", opts)
keymap("n", "<S-p>", ":BufferLineTogglePin<CR>", opts)
keymap("n", "<S-TAB>", ":bnext<CR>", opts)

-- New Tab
keymap('n', '<S-n>', ':tabedit<CR>', opts)

-- Split window
keymap('n', 'ss', ':split<CR>', opts)
keymap('n', 'sv', ':vsplit<CR>', opts)
keymap('n', 'sc', ':close<CR>', opts)

-- Resize window
keymap('n', '<C-w><left>', '<C-w><', opts)
keymap('n', '<C-w><right>', '<C-w>>', opts)
keymap('n', '<C-w><up>', '<C-w>+', opts)
keymap('n', '<C-w><down>', '<C-w>-', opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Any mode to:
-- ALT + I => Go to insert mode
-- ALT + V => Go to visual mode
-- ALT + N => Go to normal mode

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
