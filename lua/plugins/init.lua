return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' -- Package manager for neovim
  use 'shaunsingh/nord.nvim' -- Nord colorsceme
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"} -- Treesitter and nvim-treesitter highlighting are an experimental feature of Neovim.

-- Startup screen
  use {
      "goolord/alpha-nvim",
      config = function()
      require('alpha-config')
      end,
    }

-- Lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt =  true }
    }

-- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- Nvim Tree File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

-- Rainbow tags [multicolor brackets] 
  use{'p00f/nvim-ts-rainbow'}

-- Autopairs tags
  use{'windwp/nvim-autopairs'}

-- Which-key
  use{'folke/which-key.nvim'}

-- Telescope Fuzzy Finder
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

--Nvim-cmp Autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
--For vsnip users.
--[Todo] vsnip isnt yet configured {no use for me rn}
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

-- LSP Kind, tiny plugin adds vscode-like pictograms to neovim built-in lsp 
  use 'onsails/lspkind.nvim'

-- tokyonight theme
  -- use 'folke/tokyonight.nvim'

-- rose pine theme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    tag = 'v1.*',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
})
-- colorizer
--use 'norcalli/nvim-colorizer.lua'

-- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

-- Blank Line [bautify indentation]
  use "lukas-reineke/indent-blankline.nvim"

-- nvim comment
  use 'terrortylor/nvim-comment'
end)

