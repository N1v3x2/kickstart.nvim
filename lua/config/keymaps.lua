vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

vim.keymap.set('n', '<leader>t', '<Cmd>new +term<CR>', { desc = 'New terminal window (below)' })
vim.keymap.set('n', '<leader>tv', '<Cmd>vert term<CR>', { desc = 'New terminal window (right)' })

vim.keymap.set('n', '<C-q>', '<Cmd>bd!<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<C-y>', '<Cmd>%y<CR>', { desc = 'Yank entire file' })

vim.keymap.set('n', '<leader>ts', '<Cmd>tab split<CR>', { desc = '[T]ab [S]plit' })

vim.keymap.set('n', '[[', '?{<CR>w99[{', { remap = true })
vim.keymap.set('n', '][', '/}<CR>b99]}', { remap = true })
vim.keymap.set('n', ']]', 'j0[[%/{<CR>', { remap = true })
vim.keymap.set('n', '[]', 'k$][%?}<CR>', { remap = true })
