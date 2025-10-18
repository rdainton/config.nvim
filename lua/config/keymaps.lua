-- Clear search highlight on <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic navigation
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Mac Command shortcuts
vim.keymap.set('n', '<D-z>', '<cmd>undo<CR>', { desc = 'Undo' })
vim.keymap.set('i', '<D-z>', '<C-o><cmd>undo<CR>', { desc = 'Undo' })
vim.keymap.set('n', '<D-S-z>', '<cmd>redo<CR>', { desc = 'Redo' })
vim.keymap.set('i', '<D-S-z>', '<C-o><cmd>redo<CR>', { desc = 'Redo' })

vim.keymap.set({ 'n', 'v' }, '<D-c>', '"+y', { desc = 'Copy' })
vim.keymap.set('n', '<D-v>', '"+p', { desc = 'Paste' })
vim.keymap.set('i', '<D-v>', '<C-r>+', { desc = 'Paste' })

vim.keymap.set('n', '<D-a>', 'ggVG', { desc = 'Select all' })
vim.keymap.set('i', '<D-a>', '<C-o>ggVG', { desc = 'Select all' })

vim.keymap.set('n', '<D-s>', '<cmd>w<CR>', { desc = 'Save' })
vim.keymap.set('i', '<D-s>', '<C-o><cmd>w<CR>', { desc = 'Save' })

-- File explorer
vim.keymap.set('n', '<D-b>', ':Explore<CR>', { desc = 'Open file [T]ree explorer' })

-- Centered view toggle
vim.keymap.set('n', '<leader>z', '<cmd>Centerpad 20<cr>', { desc = 'Toggle centered view' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Close split
vim.keymap.set('n', '<A-w>', '<C-w>c', { desc = 'Close current split' })
vim.keymap.set('i', '<A-w>', '<C-o><C-w>c', { desc = 'Close current split' })
