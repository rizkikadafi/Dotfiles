reload "user.options"
reload "user.keymaps"
reload "user.plugins"
reload "user.dap"
reload "user.telescope"

require 'cmp'.setup {
  sources = {
    {
      name = 'emmet_vim',
      option = {
        filetypes = { 'html', 'php' },
      }
    }
  }
}
