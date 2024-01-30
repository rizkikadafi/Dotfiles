lvim.plugins = {
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require 'lsp_signature'.setup(opts) end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
    end
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  {
    "wakatime/vim-wakatime",
  },
  {
    "AlexvZyl/nordic.nvim",
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "reisub0/hot-reload.vim",
  },
  {
    'nvim-telescope/telescope-media-files.nvim'
  },
  { 'nvim-lua/popup.nvim' },
  { 'sakhnik/nvim-gdb' },
  { 'ThePrimeagen/lsp-debug-tools.nvim' },
  { 'dcampos/cmp-emmet-vim' },
  { 'mattn/emmet-vim' },
  { 'themaxmarchuk/tailwindcss-colors.nvim' },
  {
    'dracula/vim',
    name = 'dracula',
  },
  { 'ThePrimeagen/vim-be-good' },
  { 'mbbill/undotree' },
}
