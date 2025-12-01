return {
  'rdainton/leather.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('leather').setup {}

    vim.keymap.set('n', '<leader>tt', function()
      require('leather').toggle_theme()
    end, { desc = '[T]oggle [T]heme' })
  end,
}
