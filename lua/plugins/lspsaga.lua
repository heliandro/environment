local status_ok, lspsaga = pcall(require, 'lspsaga')
if (not status_ok) then return end

lspsaga.init_lsp_saga()

local opts = { silent = true }
vim.keymap.set('n', 'gh', '<cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_prev<cr>', opts)
vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'gs', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)
