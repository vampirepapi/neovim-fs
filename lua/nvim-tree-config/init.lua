require'nvim-tree'.setup()
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_highlight_opened_files = 1
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
