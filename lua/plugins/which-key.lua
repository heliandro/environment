local status_ok, which_key = pcall(require, 'which-key')
if not status_ok then
  return
end

which_key.register({
--  ['<leader>;'] = { '<cmd>Alpha<cr>', 'Dashboard' },
  ['<leader>e'] = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
  ['<leader>w'] = { '<cmd>w!<cr>', 'Save' },
  ['<leader>c'] = { '<cmd>Bdelete<cr>', 'Close Buffer' },
  ['<leader>b'] = { '<cmd>bprevious<cr>', 'Previous Buffer' },
  ['<leader>n'] = { '<cmd>bnext<cr>', 'Next Buffer' },
  ['<leader>f'] = {
    name = '+Find',
    f = { '<cmd>Telescope find_files<cr>', 'Find File' },
    g = { '<cmd>Telescope find_grep<cr>', 'Find Text (grep)' },
    r = { '<cmd>Telescope registers<cr>', 'Registers' },
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
    b = { '<cmd>Telescope git_branchs<cr>', 'Show GIT Branchs' },
  },
  ['<leader>p'] = {
    name = '+Packer',
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { '<cmd>PackerSync<cr>', 'Sync' },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
  ['<leader>g'] = { '<cmd>lua require "toggleterm"_lazygit_toggle()<cr>', 'LazyGit' },
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
  ['<leader>q'] = { '<cmd>qa<cr>', 'Quit' },
})
