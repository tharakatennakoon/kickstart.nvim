return {
  'Civitasv/cmake-tools.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('cmake-tools').setup {
      cmake_build_directory = function()
        return 'build/${variant:buildType}'
      end,
    }
  end,
}
