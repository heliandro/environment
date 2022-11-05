local status_ok, bufferline = pcall(require, 'bufferline')
if (not status_ok) then return end

bufferline.setup({
  options = {
    --mode = 'tabs',
    close_command = 'Bdelete! %d',
    --right_mouse_command = 'Bdelete! %d',
    right_mouse_command = '',
    indicator = {
      style = 'icon',
      --style = 'underline',
      icon = '',
    },
    tab_size = 22,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        separator = true,
        --padding = 1
      }
    },
    separator_style = 'think', -- slant, think
    show_close_icon = false,
    show_buffer_close_icons = false,
    enforce_regular_tabs = true,
  },
  highlights = {
    background = {
      --  fb = 'trasparent',
      --  bg = '#000'
    }
  }
})
