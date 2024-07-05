return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  event = 'VimEnter',
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {
      side = 'right',
      float = {
        enable = false,
      },
      width = 60,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = false,
    },
  },

  config = function(_, opts)
    local nt = require 'nvim-tree'
    nt.setup(opts)
    vim.keymap.set('n', '<C-p>', '<cmd>NvimTreeToggle<CR>')
  end,
}
