return {
  'folke/snacks.nvim',
  lazy = false,
  priority = 1000,
  ---@type snacks.Config
  opts = {
    picker = {
      layout = {
        preset = 'dropdown',
        preview = false,
      },
      win = {
        input = {
          keys = {
            ['<A-CR>'] = { 'edit_vsplit', mode = { 'n', 'i' } },
          },
        },
      },
    },
  },
  config = function(_, opts)
    require('snacks').setup(opts)
    -- Override the picker directory highlight for better readability
    -- TODO: Add this highight group to colorscheme
    vim.api.nvim_set_hl(0, 'SnacksPickerDir', { fg = '#808080' })
  end,
  keys = {
    {
      '<leader><leader>',
      function()
        Snacks.picker.smart {
          multi = { 'files' },
        }
      end,
      desc = '[ ] Search all files',
    },
    {
      '<leader>ss',
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = '[S]earch [S]ymbols',
    },
  },
}
