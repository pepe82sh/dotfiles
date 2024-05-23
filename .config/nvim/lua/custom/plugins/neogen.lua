vim.keymap.set('n', '<leader>oa', ":lua require('neogen').generate()<CR>", { desc = 'D[o]cumentation [A]dd' })

return
{
  'danymat/neogen',
  config = true,
}
