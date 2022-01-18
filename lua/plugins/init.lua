local packer = require('packer')

return packer.startup(function(use)
  
  -- Packer plugin manager
  use "wbthomason/packer.nvim"

  -- Plenary
  use 'nvim-lua/plenary.nvim'

  -- OneDark Theme
  use {
    'navarasu/onedark.nvim',
    config = function() require('plugins.onedark') end
  } 

  -- Web Devicons
  use {
    'kyazdani42/nvim-web-devicons',
    after = "nvim-base16.lua",
    config = function() require('plugins.icons') end
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    after = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.tree') end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require('plugins.treesitter') end
  }
  
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- Base16
  use {
    "NvChad/nvim-base16.lua",
    after = "packer.nvim",
  }

  -- Hop
  use {
    'phaazon/hop.nvim',
    branch = 'v1', 
    config = function() require('plugins.hop') end
  }

  -- Colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup() end
  }
end)

