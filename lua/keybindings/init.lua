-- <CR> = control return, automatically presses enter for you
-- {silent = false, doesnt show what command is activated}
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Keybindings for tabs movement
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
-- mapped <ctrl+n> for Nvim Tree Toogle
map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = false})

