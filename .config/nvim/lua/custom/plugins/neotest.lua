return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "alfaix/neotest-gtest",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    local neotest = require("neotest")
    vim.keymap.set('n', '<leader>ts', function() neotest.summary.toggle() end, { desc = '[T]est toggle [S]ummary' })
    vim.keymap.set('n', '<leader>tr', function() neotest.run.run() end, { desc = '[T]est [R]un' })
    vim.keymap.set('n', '<leader>td', function() neotest.run.run({ strategy = "dap" }) end,
      { desc = '[T]est [D]ebug' })
    vim.keymap.set('n', '<leader>to', function() neotest.output.open() end, { desc = '[T]est show [O]utput' })
    vim.keymap.set('n', '<leader>tw', function() neotest.watch.toggle() end, { desc = '[T]est toggle [W]atch' })
    neotest.setup({
      adapters = {
        require("neotest-gtest").setup({
          debug_adapter = "gdb"
        })
      }
    })
  end
}
