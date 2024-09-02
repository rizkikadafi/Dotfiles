require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/Documents/notes",
          compsci = "~/Documents/notes/compsci",
          lectures = "~/Documents/notes/lectures",
        },
        default_workspace = "notes",
      },
    },
    ["core.latex.renderer"] = {},
  },
}
vim.wo.foldlevel = 99
vim.wo.conceallevel = 2
