-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        side = 'right',
        float = {
          enable = false,
        },
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    },
  },

  {
    'akinsho/toggleterm.nvim',
    event = 'VimEnter',
    config = function()
      local tt = require 'toggleterm'
      tt.setup()
      vim.keymap.set('n', '<C-n>', '<cmd>ToggleTerm direction=float<CR>')
    end,
  },
}
