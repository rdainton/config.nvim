return {
  'rdainton/leather.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('leather').setup {}
  end,
}
