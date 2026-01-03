return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<A-1>', ':Neotree filesystem reveal left<CR>')
    vim.keymap.set('n', '<leader>1', ':Neotree filesystem toggle left<CR>')
  end
}
