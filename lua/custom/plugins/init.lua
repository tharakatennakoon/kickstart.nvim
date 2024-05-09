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
        dotfiles = true,
      },
    },

    config = function(_, opts)
      require('nvim-tree').setup(opts)
      vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>')
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    event = 'VimEnter',
    config = function()
      local tt = require 'toggleterm'
      tt.setup()
      vim.keymap.set('n', '<C-i>', '<cmd>ToggleTerm direction=float<CR>')
    end,
  },

  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'VimEnter',
    config = function()
      require('bufferline').setup()
    end,
  },

  {
    dir = '~/.config/nvim/lua/custom/plugins/vscodetask.nvim/',
  },
}
