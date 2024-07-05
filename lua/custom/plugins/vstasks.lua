return {
  'tharakatennakoon/vstasks',
  dependencies = { {
    'Joakker/lua-json5',
    lazy = false,
    name = 'json5',
    build = './install.sh',
  } },
  config = function()
    require('vstasks').setup()

    vim.keymap.set('n', '<leader>rt', '<cmd>VsCodeTaskRun<CR>')
    vim.keymap.set('n', '<leader>rl', '<cmd>VsCodeTaskLogs<CR>')
  end,
}
