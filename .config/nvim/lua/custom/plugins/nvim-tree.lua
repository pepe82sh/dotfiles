-- use ctrl-n to toggle tree
vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', { desc = 'Toggle nvim-tree' })

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
