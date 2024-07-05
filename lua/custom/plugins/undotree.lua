return {
  'mbbill/undotree',
  init = function()
    if vim.fn.has 'persistent_undo' == 1 then
      local undodir = vim.loop.os_homedir() .. '/.undodir'

      print('tharaka' .. undodir)

      if not vim.fn.isdirectory(undodir) then
        vim.fn.mkdir(undodir, 'p')
      end

      vim.opt.undodir = undodir
      vim.opt.undofile = true
    end
  end,
}
