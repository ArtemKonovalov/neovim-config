return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = { "java", "bash", "lua", "xml" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
