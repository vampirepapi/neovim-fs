require("bufferline").setup{}
-- local highlights = require('rose-pine.plugins.bufferline')
-- require('bufferline').setup({ highlights = highlights })

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
vim.cmd[[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
