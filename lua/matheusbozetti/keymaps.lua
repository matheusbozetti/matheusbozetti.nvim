local nvimSetKeymap = vim.api.nvim_set_keymap
local vimSetKeymap = vim.keymap.set

nvimSetKeymap('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection up', noremap = true, silent = true })
nvimSetKeymap('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection down', noremap = true, silent = true })

vimSetKeymap('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open vertical NetEW' })
vimSetKeymap('n', '<C-d>', '<C-d>zz', { desc = 'Move down and center' })
vimSetKeymap('n', '<C-u>', '<C-u>zz', { desc = 'Move up and center' })

vimSetKeymap('n', '<leader>p', '"_dP', { desc = 'Change the highlighted text with the previous copied' })

vimSetKeymap('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vimSetKeymap('n', '<C-l>', ':bnext<CR>', { desc = 'Next buffer' })
vimSetKeymap('n', '<C-h>', ':bprev<CR>', { desc = 'Previous buffer' })
