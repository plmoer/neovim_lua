local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  -- color scheme
  use 'morhetz/gruvbox'

  -- airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- comment
  use 'terrortylor/nvim-comment'

  -- auto pair
  use 'jiangmiao/auto-pairs'

  -- git fugitive
  use 'tpope/vim-fugitive'


  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use {
  -- Optional but recommended
  -- 'nvim-treesitter/nvim-treesitter',
  'lewis6991/spellsitter.nvim',
  }

  -- nerdtree
  use 'preservim/nerdtree'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- auto completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'

  -- luasnip user 
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- LSP kind
  use 'onsails/lspkind-nvim'

  -- LSP installer 
  use 'williamboman/nvim-lsp-installer'

  -- nvim-treesitter
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate"}

  -- formating
  use 'jose-elias-alvarez/null-ls.nvim'

  -- indentation line
  use 'lukas-reineke/indent-blankline.nvim'
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
