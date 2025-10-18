return {
  'rdainton/share-context.nvim',
  config = function()
    local share_context = require 'share-context'

    vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cp', share_context.copy_path_relative, { desc = '[C]opy file [P]ath (relative)' })
    vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cP', share_context.copy_path_absolute, { desc = '[C]opy file [P]ath (absolute)' })
    vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cd', share_context.copy_dir_relative, { desc = '[C]opy [D]irectory (relative)' })
    vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cD', share_context.copy_dir_absolute, { desc = '[C]opy [D]irectory (absolute)' })
  end,
}
