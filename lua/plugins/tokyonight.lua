local status_ok, tokyonight = pcall(require, 'tokyonight')
if (not status_ok) then return end

tokyonight.setup({
  style = 'storm',
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    sidebars = 'transparent',
    floats = 'transparent'
  }
})

vim.cmd[[colorscheme tokyonight]]
