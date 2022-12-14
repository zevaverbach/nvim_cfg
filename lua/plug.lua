require("mason").setup()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' 
  use 'kyazdani42/nvim-web-devicons'
  use 'leafOfTree/vim-svelte-plugin'
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'mfussenegger/nvim-dap'
  use {
  "klen/nvim-test",
  config = function()
    require('nvim-test').setup()
  end
}
  use 'tpope/vim-commentary'
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' 
  use 'simrat39/rust-tools.nvim'

  -- TODO: set these up
  use 'zivyangll/git-blame.vim' -- show the commit where a line of code came from
  use 'SmiteshP/nvim-navic' -- show filepath at top 

  -- copy pasted from https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
  -- code completion
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'
  use 'puremourning/vimspector'
  use 'voldikss/vim-floaterm'
  use 'lewis6991/impatient.nvim'
  use {
  'm-demare/hlargs.nvim',
  requires = { 'nvim-treesitter/nvim-treesitter' }
  }
  use 'RRethy/vim-illuminate'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'kylechui/nvim-surround'
  use { "yioneko/nvim-yati", tag = "*", requires = "nvim-treesitter/nvim-treesitter" }
  use 'moll/vim-bbye'
end)
