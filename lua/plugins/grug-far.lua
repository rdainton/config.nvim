return {
  'MagicDuck/grug-far.nvim',
  keys = {
    { '<leader>sf', '<cmd>lua require("grug-far").open()<cr>', desc = 'Search and replace' },
  },
  config = function()
    require('grug-far').setup()
  end,
}
