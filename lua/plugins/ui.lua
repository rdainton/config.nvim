return {
  -- Which-key for keybind hints
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      require('which-key').add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
      }
    end,
  },

  -- Git signs
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
  },

  -- Comment toggling
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()

      vim.keymap.set('v', '<D-/>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Comment toggle linewise (visual)' })
      vim.keymap.set('n', '<D-/>', '<Plug>(comment_toggle_linewise_current)', { desc = 'Comment toggle current line' })
      vim.keymap.set('i', '<D-/>', '<C-o><Plug>(comment_toggle_linewise_current)', { desc = 'Comment toggle current line (insert)' })
    end,
  },

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
}
