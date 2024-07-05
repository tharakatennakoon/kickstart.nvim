return {
  'akinsho/toggleterm.nvim',
  event = 'VimEnter',
  config = function()
    local tt = require 'toggleterm'
    tt.setup()
    vim.keymap.set('n', '<C-i>', '<cmd>ToggleTerm direction=float<CR>')
  end,
}
