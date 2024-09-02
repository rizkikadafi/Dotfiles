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
  { 'jbyuki/nabla.nvim' },
  { "mfussenegger/nvim-dap-python" },
  { "nvim-neotest/neotest" },
  { "nvim-neotest/neotest-python" },
  {
    "barrett-ruth/live-server.nvim",
    build = 'npm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { "magick" },
    },
  },
  {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
  },
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
    end,
  },
  {
    'quarto-dev/quarto-nvim',
    'jmbuhr/otter.nvim',
  },
  { "rebelot/kanagawa.nvim" },
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    dependencies = {
      "nvim-neorg/lua-utils.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-neotest/nvim-nio",
      "pysan3/pathlib.nvim",
    },
  },
  {
    "folke/zen-mode.nvim",
    opts = {}
  }
}
