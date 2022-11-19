vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'editorconfig/editorconfig-vim'

  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
    end,
  }

  use {
    'akinsho/git-conflict.nvim',
    tag = '*',
    config = function()
      require('git-conflict').setup()
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require 'editor.explorer'
    end,
  }

  use {
    'marko-cerovac/material.nvim',
    config = function()
      require 'view.theme'
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'ide.treesitter'
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function()
      require 'view.statusbar'
    end,
  }

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'ide.errors'
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('telescope').setup()
    end,
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end,
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v1',
    config = function()
      require('hop').setup {
        keys = 'etovxqpdygfblzhckisuran',
      }
    end,
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require 'ide.lspconfig'
    end,
  }

  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    config = function()
      require 'ide.saga'
    end,
  }

  use {
    'rafamadriz/friendly-snippets',
    event = 'InsertEnter',
  }

  use {
    'L3MON4D3/LuaSnip',
    wants = 'friendly-snippets',
    after = 'nvim-cmp',
    config = function()
      require('luasnip').config.set_config { history = true, updateevents = 'TextChanged,TextChangedI' }
      require('luasnip/loaders/from_vscode').load()
    end,
  }

  use 'hrsh7th/cmp-nvim-lsp'
  use { 'hrsh7th/cmp-path', after = 'cmp-nvim-lsp' }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'ide.completion'
    end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  }

  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'view.tabs'
    end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  }

  use {
    'mhartington/formatter.nvim',
    config = function()
      require 'ide.format'
    end,
  }

  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('diffview').setup()
    end,
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup()
    end,
  }
end)
