local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
          -- "  ██╗   ██╗██╗███╗   ███╗██████╗  █████╗ ██████╗ ",
          -- "  ██║   ██║██║████╗ ████║██╔══██╗██╔══██╗██╔══██╗",
          -- "  ██║   ██║██║██╔████╔██║██████╔╝███████║██████╔╝",
          -- "  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██╔══██║██╔══██╗",
          -- "   ╚████╔╝ ██║██║ ╚═╝ ██║██████╔╝██║  ██║██║  ██║",
          -- "    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝",
                                                         
'          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
    '                                   ',
    '               NeoVIM              ',
    '      Made w/ ❤ By vampirepapi     ',

                                               }

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("f", " 🎄  Find file", ":Telescope find_files<CR>"),
  dashboard.button("p", " 🌳  Projects", ":Telescope projects<CR>"),
  dashboard.button("r", " 🚀  Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", " 🔬  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
  dashboard.button("q", " 🏓  Quit NVIM", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune")
-- dashboard.section.footer.val = fortune()

dashboard.section.footer.val = {
  "                       ",
  "I Dont want to be Horny",
  " I Just wanna be happy ",
  "          🚀           ",
  "                       ",
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])