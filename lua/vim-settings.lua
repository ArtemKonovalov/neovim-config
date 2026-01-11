vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    source = "if_any",
    severity = { min = vim.diagnostic.severity.HINT },
    format = function(d)
      return d.message:gsub("\n", " ")
    end,
  },

  signs = true,
  underline = true,
  severity_sort = true,
  update_in_insert = false,
})
