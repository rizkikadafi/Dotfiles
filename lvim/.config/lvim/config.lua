reload "user.options"
reload "user.keymaps"
reload "user.plugins"
reload "user.dap"
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "dartls" })

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
