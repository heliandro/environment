local status_ok, which_key = pcall(require, 'which-key')
if not status_ok then
  return
end

which_key.register({
  --  ['<leader>;'] = { '<cmd>Alpha<cr>', 'Dashboard' },
  ['<leader>e'] = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
  ['<leader>w'] = { '<cmd>w!<cr>', 'Save' },
  ['<leader>c'] = { '<cmd>Bdelete<cr>', 'Buffer Close' },
  ['<leader>b'] = { '<cmd>bprevious<cr>', 'Buffer Previous' },
  ['<leader>n'] = { '<cmd>bnext<cr>', 'Buffer Next' },
  ['<leader>l'] = {
    name = '+LSP/Diagnostic',
    f = { '<cmd>Lspsaga lsp_finder<cr>', 'LSP Finder' },
    h = { '<cmd>Lspsaga hover_doc<cr>', 'Hover Doc' },
    s = { '<cmd>Lspsaga signature_help<cr>', 'Signature Help' },
    p = { '<cmd>Lspsaga peek_definition<cr>', 'Preview Definition' },
    r = { '<cmd>Lspsaga rename<cr>', 'Rename' },
    b = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', 'Diagnostic Previous' },
    n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', 'Diagnostic Next' },
    a = { '<cmd>Lspsaga code_action<cr>', 'Code Action' },
  },
  ['<leader>f'] = {
    name = '+Find',
    f = { '<cmd>lua require "telescope.builtin".find_files()<cr>', 'Find File' },
    g = { '<cmd>lua require "telescope.builtin".live_grep()<cr>', 'Find Text (grep)' },
    r = { '<cmd>lua require "telescope.builtin".registers()<cr>', 'Registers' },
    k = { '<cmd>lua require "telescope.builtin".keymaps()<cr>', 'Keymaps' },
    b = { '<cmd>lua require "telescope.builtin".git_branchs()<cr>', 'Show GIT Branchs' },
  },
  ['<leader>p'] = {
    name = '+Packer',
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { '<cmd>PackerSync<cr>', 'Sync' },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
  ['<leader>g'] = {
    name = '+Git',
    g = { '<cmd>lua require "toggleterm"_lazygit_toggle()<cr>', 'LazyGit (Git Tool)' },
    b = { '<cmd>lua require "git.blame".blame()<cr>', 'Git Blame' },
    o = { '<cmd>lua require "git.browse".open(false)<cr>', 'Git Browse (Open GitHub+)' },
    d = { '<cmd>lua require "git.diff".open()<cr>', 'Git Diff (Open)' },
    D = { '<cmd>lua require "git.diff".close()<cr>', 'Git Diff (Close)' },
  },
  ['<leader>t'] = {
    name = '+Terminal',
    t = { '<cmd>ToggleTerm<cr>', 'Open ZSH' },
    n = { '<cmd>lua require "toggleterm"_node_toggle()<cr>', 'Nodejs' },
    p = { '<cmd>lua require "toggleterm"_python_toggle()<cr>', 'Python' },
    h = { '<cmd>lua require "toggleterm"_htop_toggle()<cr>', 'CPU & Task Manager (htop)' },
    d = { '<cmd>lua require "toggleterm"_ncdu_toggle("all")<cr>', 'HD Disk Usage (ncdu)' },
    D = { '<cmd>lua require "toggleterm"_ncdu_toggle()<cr>', 'Project Disk Usage (ncdu)' }
  },
  ['<leader>,'] = {
    name = '+NeoVIM',
    c = { '<cmd>edit ~/.config/nvim/init.lua<cr>', 'Edit init.lua (Config)' },
  },
  ['<leader>q'] = { '<cmd>qa<cr>', 'Quit NeoVIM' },
})
