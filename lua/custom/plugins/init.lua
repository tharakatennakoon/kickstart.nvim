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
    'mfussenegger/nvim-dap-python',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('dap-python').setup()
    end,
  },

  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  {
    'mg979/vim-visual-multi',
  },

  {
    'tharakatennakoon/vstasks',
  },
}
