vim.lsp.start({
  name = 'blacklist-server',
  cmd = { 'blacklist-server', '--stdio' },
  filetypes = { 'text' },
  autostart = true,
  root_dir = vim.fs.dirname(vim.fs.find({ 'package.json' }, { upward = true })[1]),
})
